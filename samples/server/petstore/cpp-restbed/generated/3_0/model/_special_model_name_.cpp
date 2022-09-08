/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.1.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "_special_model_name_.h"

#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <stdexcept>
#include <regex>
#include <boost/lexical_cast.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include "helpers.h"

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

_special_model_name_::_special_model_name_(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string _special_model_name_::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void _special_model_name_::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree _special_model_name_::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.put("$special[property.name]", m_special_property_name);
	return pt;
}

void _special_model_name_::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_special_property_name = pt.get("$special[property.name]", 0L);
}

int64_t _special_model_name_::getSpecialPropertyName() const
{
    return m_special_property_name;
}

void _special_model_name_::setSpecialPropertyName(int64_t value)
{
    m_special_property_name = value;
}



std::vector<_special_model_name_> create_special_model_name_VectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<_special_model_name_>();
    for (const auto& child: pt) {
        vec.emplace_back(_special_model_name_(child.second));
    }

    return vec;
}

}
}
}
}

