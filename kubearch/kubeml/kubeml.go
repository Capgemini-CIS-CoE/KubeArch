package kubeml

type KubeML interface {
	GetID() string
	GetVariableValue(variable string) interface{}
}