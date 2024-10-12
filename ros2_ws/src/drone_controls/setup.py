from setuptools import setup

package_name = 'drone_controls'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='joshua_caratao',
    maintainer_email='joshua_caratao@todo.todo',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'take_off_sim = drone_controls.take_off_sim:main',  # Ensure this matches your Python script and function
        ],
    },
)
