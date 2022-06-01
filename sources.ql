import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::ParameterNode pluginOptions |
        source = jquery().getAPropertyRead("fn").getAPropertySource() and pluginOptions = ((DataFlow::FunctionNode)source).getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node