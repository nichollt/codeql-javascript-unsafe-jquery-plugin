import javascript

from DataFlow::FunctionNode pluginSource, DataFlow::ParameterNode pluginOptions
where pluginSource = jquery().getAPropertyRead("fn").getAPropertySource() and pluginOptions = pluginSource.getLastParameter()
select pluginSource, pluginOptions
