%%raw(`import './App.css';`)

// babel-plugin-named-asset-import doesn't support rescript output format out-of-box
// See https://github.com/facebook/create-react-app/blob/88a5435/packages/babel-plugin-named-asset-import/index.test.js
%%raw(`import logo from "./logo.svg";`)
@bs.val external logo: string = "logo"

@react.component
let make = () => {
  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p>
        {React.string("Edit ")}
        <code> {React.string("src/App.js")} </code>
        {React.string(" and save to reload.")}
      </p>
      <a
        className="App-link"
        href="https://reactjs.org"
        target="_blank"
        rel="noopener noreferrer">
        {React.string("Learn React")}
      </a>
    </header>
  </div>
}
