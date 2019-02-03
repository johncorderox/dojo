const Title = (props) => {

  const {title} = props;
  return React.createElement('h1',null, text);
}

const App = (props) => {

  return React.createElement(Title, { text: "This should render"} );
}



// Stateless Funcional Component - React compnent that doesnt keep track of state

<script src="node_modules/react/umd/react.development.js"></script>
<script src="node_modules/react-dom/umd/react-dom.development.js"></script>


const List = (props) => {
    const listItems = props.items.map((itemString) => {
        return <li key={itemString}>{itemString}</li>
    });
    return (
        <ul>
            {listItems}
        </ul>
    )
}
ReactDOM.render(<List items= { ['React', 'Redux', 'Node', 'Express'] } />, document.getElementById('content'));
