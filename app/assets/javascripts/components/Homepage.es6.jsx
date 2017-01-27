class Homepage extends React.Component {
  constructor() {
    super()
    this.state = {
      questions: []
    }
  }

  componentWillMount() {
    $.ajax({
      type: 'get',
      url: '/questions/topQuestions'
    }).success(function(response) {
      this.setState({
        questions: response
      })
    }.bind(this))
  }

  render() {
    return(
      <div>
        <h1>Questions</h1>
        <QuestionList
          questions={this.state.questions}
        />
      </div>
    )
  }
}
