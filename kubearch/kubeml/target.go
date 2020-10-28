package kubeml

type Target interface {
	GetTargetID() string
	GetVariableValue(variable string) interface{}
}