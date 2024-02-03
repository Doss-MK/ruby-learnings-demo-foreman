import React from "react";
import { useSelector, useDispatch } from "react-redux";
import { logout } from "../features/User";

const Profile = () => {
    const user = useSelector( state => state.user.value );
    const dispatch = useDispatch();
    console.log({user})
    return(
        <>
            { user.isLoggedIn && (
                <div className="profile-details m-2">
                    <table className="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Age</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{user.id}</td>
                                <td>{user.name}</td>
                                <td>{user.age}</td>
                                <td>{user.email}</td>
                            </tr>
                        </tbody>
                    </table>
                    <button 
                        className="btn btn-warning m-2"
                        onClick={() => dispatch(logout())}
                    >
                        Logout
                    </button>
                </div>
            )}
        </>
    );
};

export default Profile;