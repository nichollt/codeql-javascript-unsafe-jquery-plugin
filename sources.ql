import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::ParameterNode pluginOptions |
        pluginOptions = ((DataFlow::FunctionNode)source).getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node