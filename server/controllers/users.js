const pool = require('../config/db');
const queries = require('../queries/users');
const bcrypt = require("bcryptjs");

const getUsers = (req, res) => {
    pool.query(queries.getUsers, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    })
}

const getUserById = (req, res) => {
    const id = parseInt(req.params.id);
    pool.query(queries.getUserById, [id], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows)
    })
}



const removeUser = (req, res) => {
    const id = parseInt(req.params.id);
    pool.query(queries.removeUser, [id], (error, results) => {
        if (error) throw error;
        res.status(200).send("User remove successfully.")
    })
}

const updateUser = async (req, res) => {
    const id = parseInt(req.params.id)
    const { username, password, fname, lname, image, email, tel, title_id, institution_id, registration_date, role_id, rank } = req.body

    pool.query(queries.updateUser, [username, password, fname, lname, image, email, tel, title_id, institution_id, registration_date, role_id, rank, id], (error, results) => {
        if (error) throw error;
        res.status(200).send("User updated successfully.")
    })
}

const createUser = async (req, res) => {
    try {
        const { username, password, fname, lname, image, email, tel, title_id, institution_id,
            registration_date, role_id, rank } = req.body;

        const usernameCheck = await pool.query(queries.usernameQuery, [username]);
        const emailCheck = await pool.query(queries.emailQuery, [email]);
        const telCheck = await pool.query(queries.telQuery, [tel]);

        if (usernameCheck.rows.length > 0) {
            return res.status(400).send("Username already exists");
        }

        if (emailCheck.rows.length > 0) {
            return res.status(400).send("Email is already in use");
        }

        if (telCheck.rows.length > 0) {
            return res.status(400).send("Tel is already in use");
        }

        const salt = await bcrypt.genSalt(10);
        const hashedPassword = await bcrypt.hash(password, salt);

        await pool.query(queries.addUser, [username, hashedPassword, fname, lname, image,
            email, tel, title_id, institution_id, registration_date, role_id, rank]);

        res.status(201).send(`Username ${username} created Successfully.`)
    } catch (err) {
        console.error(err);
        res.status(500).send("Server Error!");
    }
}

module.exports = {
    getUsers,
    getUserById,
    createUser,
    removeUser,
    updateUser,
}
