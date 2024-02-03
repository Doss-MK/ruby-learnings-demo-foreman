import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { login } from "../features/User";

const Login = () => {
    const dispatch = useDispatch();
    const user = useSelector( state => state.user.value );
    const [name, setName] = useState();
    const [age, setAge] = useState();
    const [email, setEmail] = useState();

    return(
        <>
            { !user.isLoggedIn && (
                <>
                    <input type="text" className="form-control w-50 m-2 d-block" onChange={(e) => setName(e.target.value)} placeholder="user-name" />
                    <input type="number" className="form-control w-50 m-2 d-block" onChange={(e) => setAge(e.target.value)} placeholder="user-age" />
                    <input type="text" className="form-control w-50 m-2 d-block" onChange={(e) => setEmail(e.target.value)} placeholder="user-email" />
                    <button
                        className="btn btn-primary m-2"
                        onClick={() => dispatch(login({ user: { id: 1, name, age, email, isLoggedIn: true } }))}
                    >
                        Login
                    </button>
                </>
            )}
        </>
    );
};

export default Login;