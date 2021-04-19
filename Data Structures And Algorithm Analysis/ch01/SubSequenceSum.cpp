// A small program that shows a maximum contigous subsequence (3-element) sum algorithm having
// cubic time complexity

#include <iostream>
#include <vector>
#include <chrono>
#include <ctime>

int maxSubSum1(const std::vector<int> &);

int main()
{
	std::chrono::time_point<std::chrono::system_clock> start, end;

	std::vector<int> Test {2,8,1,6,3,5,7,1,2,4};

	std::cout << ">>>>>ARRAY<<<<<" << std::endl;
	
	for(int i=0; i<Test.size(); ++i)
	{
		std::cout << Test[i] << " ";
	}

	start = std::chrono::system_clock::now();
	std::cout << std::endl << "MAX: " << maxSubSum1(Test) << std::endl;
	end = std::chrono::system_clock::now();

	std::chrono::duration<double> elapsed_time = end - start;
	//std::time_t end_time = std:chrono::system_clock::to_time_t(end);
	std::cout << "Finished: " << elapsed_time.count() << std::endl;

}

int maxSubSum1(const std::vector<int> & a)
{
	int maxSum = 0;

	for (int i = 0; i < a.size(); ++i)
	{
		for (int j = i; j < a.size(); ++j)
		{
			int thisSum = 0;

			for (int k = i ; k <= j; ++k)
			{
				thisSum += a[k];
			}

			if (thisSum > maxSum)
			{
				maxSum = thisSum;
			}
		}
	}
	return maxSum;
}
