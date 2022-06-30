# coding: utf-8

"""
    Harvester APIs

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: v1beta1
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import unittest

import harvester
from harvester.api.restores_api import RestoresApi  # noqa: E501
from harvester.rest import ApiException


class TestRestoresApi(unittest.TestCase):
    """RestoresApi unit test stubs"""

    def setUp(self):
        self.api = harvester.api.restores_api.RestoresApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_namespaced_virtual_machine_restore(self):
        """Test case for create_namespaced_virtual_machine_restore

        """
        pass

    def test_delete_namespaced_virtual_machine_restore(self):
        """Test case for delete_namespaced_virtual_machine_restore

        """
        pass

    def test_list_namespaced_virtual_machine_restore(self):
        """Test case for list_namespaced_virtual_machine_restore

        """
        pass

    def test_list_virtual_machine_restore_for_all_namespaces(self):
        """Test case for list_virtual_machine_restore_for_all_namespaces

        """
        pass

    def test_patch_namespaced_virtual_machine_restore(self):
        """Test case for patch_namespaced_virtual_machine_restore

        """
        pass

    def test_read_namespaced_virtual_machine_restore(self):
        """Test case for read_namespaced_virtual_machine_restore

        """
        pass

    def test_replace_namespaced_virtual_machine_restore(self):
        """Test case for replace_namespaced_virtual_machine_restore

        """
        pass


if __name__ == '__main__':
    unittest.main()
