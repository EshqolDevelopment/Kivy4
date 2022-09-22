python3 update_version.py
rm -rf build dist Kivy4.egg-info

python3 setup.py install
twine upload --repository pypi dist/* -u your_username -p your_password

rm -rf build dist Kivy4.egg-info
