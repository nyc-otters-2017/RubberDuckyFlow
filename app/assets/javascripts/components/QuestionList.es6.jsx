class QuestionList extends React.Component {

  render() {
    return(
      <div>
        <ul>
          {
            this.props.questions.map((question) => {

              return(<Question

                key={question.id}
                data={question}
              />)
            })
          }
        </ul>
      </div>
    )
  }
}
