import React from 'react';
import Aux from '../../HOC/aux';
import classes from './layout.css';

const layout = (props) => (
  <Aux>
  <div>Tool bar , etc</div>
  <main className={classes.content} />
  <div>{props.children}</div>
  </Aux>
);

export default layout;
