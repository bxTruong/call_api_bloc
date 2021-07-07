abstract class FormSubmisstionStatus {
  const FormSubmisstionStatus();
}

class InitialFormStatus extends FormSubmisstionStatus {
  const InitialFormStatus();
}

class FormSubmitting extends FormSubmisstionStatus {}

class SubmisstionSucces extends FormSubmisstionStatus {}

class SubmisstionFailed extends FormSubmisstionStatus {}
