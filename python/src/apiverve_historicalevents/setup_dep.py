from setuptools import setup, find_packages

setup(
    name='apiverve_historicalevents',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Historical Events is a world history API that searches historical records by keyword to find matching events and their detailed descriptions. Paid plans add exact calendar dates and queries by year or date.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/historicalevents?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
