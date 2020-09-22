open ReactDomExperimental

%%raw(`import './Index.css';`)

switch createRootWithId("root") {
| Some(root) => root->render(
    <React.StrictMode>
      <App />
    </React.StrictMode>
  )
| None => ()
}
