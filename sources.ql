import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode pluginSource, DataFlow::ParameterNode pluginOptions |
        pluginSource = jquery().getAPropertyRead("fn").getAPropertySource() and source = pluginSource.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node