#include <iostream>
#include <string>


constexpr std::size_t MAX_PATH_LENGTH = 8192;


bool string_end_with(std::string str_in, std::string str_match)
{
	if (str_in.length() < str_match.length()) {
		return false;
	}
	else {
		return (0 == str_in.compare(str_in.length() - str_match.length(), str_match.length(), str_match));
	}
}

std::string tail_replace(std::string str_in)
{
	std::string str_obj{ ".o" };
	std::string str_obj_quotation{ ".o\"" };

	std::string str_lib{ ".a" };
	std::string str_lib_quotation{ ".a\"" };


	std::string str_ret{ str_in };

	if (string_end_with(str_in, str_obj)) {
		str_ret = str_in.substr(0, str_in.length() - str_obj.length()) + ".rel";
	}
	else if (string_end_with(str_in, str_obj_quotation)) {
		str_ret = str_in.substr(0, str_in.length() - str_obj_quotation.length()) + ".rel\"";
	}
	else if (string_end_with(str_in, str_lib)) {
		str_ret = str_in.substr(0, str_in.length() - str_lib.length()) + ".lib";
	}
	else if (string_end_with(str_in, str_lib_quotation)) {
		str_ret = str_in.substr(0, str_in.length() - str_lib_quotation.length()) + ".lib\"";
	}

	return str_ret;
}

int main(int argc, char** argv)
{
	std::string str_argv0{ argv[0] };

	std::string str_path{ "." };
	std::string str_cmd{ "" };
	std::string str_file{ "" };


	int ret;

	std::string cmd_option{ "" };

	for (int count = 1; count < argc; ++count) {
//		std::cout << count << " " << argv[count] << '\n';
		std::string str_argv_tmp{ argv[count] };

		std::string inc_prefix{ "-I" };

		std::size_t space_found = str_argv_tmp.find_last_of(" ");


		if ((space_found < MAX_PATH_LENGTH) && (!str_argv_tmp.compare(0, inc_prefix.size(), inc_prefix))) {
			cmd_option += " \"" + tail_replace(str_argv_tmp) + "\"";
		}
		else {
			cmd_option += " " + tail_replace(str_argv_tmp);
		}


	}

	std::size_t found = str_argv0.find_last_of("/\\");

	if (found < MAX_PATH_LENGTH) {
		str_path = str_argv0.substr(0, found);
		str_file = str_argv0.substr(found + 1);
	}
	else {
		str_file = str_argv0;
	}


	str_cmd = "\"\"" + str_path + "\\sdar.exe" + "\"" + cmd_option + "\"";

//	std::cout << "cmd: " << str_cmd << "\n";
//	std::cerr << "cmd: " << str_cmd << "\n";

	ret = system(str_cmd.c_str());
	//	ret = 0;

//	std::cerr << "ret = " << ret << "\n";

	//	std::cin >> c;

	return ret;

}