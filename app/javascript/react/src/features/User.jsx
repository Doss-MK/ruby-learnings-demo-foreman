import { createSlice } from "@reduxjs/toolkit";

export const userSlice = createSlice({
    name: 'user',
    initialState: {
        value: {
            id: 0,
            name: '-',
            age: 0,
            email: '-',
            isLoggedIn: false
        }
    },
    reducers: {
        login: (state, action) => {
            console.log({state, action})
            state.value = action.payload.user
        },
        logout: (state, action) => {
            console.log({state, action})
            state.value = { id: 0, name: '-', age: 0, email: '-', isLoggedIn: false }
        }
    }
});

export const { login, logout } = userSlice.actions;
export default userSlice.reducer;