import javascript

from DataFlow::Node fnSource
where fnSource = jquery().getAPropertyRead("fn").getAPropertySource()
select fnSource
