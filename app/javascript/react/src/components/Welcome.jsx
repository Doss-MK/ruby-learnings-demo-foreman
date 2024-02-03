import React from 'react';
import ReactDOM from 'react-dom/client';

function Welcome(props) {
  return <h1>Welcome World!!1sfsdfsdf1</h1>;
}

const container = document.getElementById("root");
const root = ReactDOM.createRoot(container);
root.render(<Welcome />);

export default Welcome;