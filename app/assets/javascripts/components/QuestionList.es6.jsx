class QuestionList extends React.Component {

  render() {
    return(
      <div>
        <ul>
          {
            this.props.questions.map((question) => {

              return(<Question

                key={question.id}
                title={question.title}
              />)
            })
          }
        </ul>
      </div>
    )
  }
}
