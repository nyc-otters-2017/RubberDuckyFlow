class Question extends React.Component {
  constructor() {
    super()
  }

  render() {
    var questionID = "/questions/" + this.props.data.id
    return(
      <a href={questionID}><h3>{this.props.data.title}</h3></a>
    )
  }
}
