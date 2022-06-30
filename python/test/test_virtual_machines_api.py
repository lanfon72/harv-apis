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
from harvester.api.virtual_machines_api import VirtualMachinesApi  # noqa: E501
from harvester.rest import ApiException


class TestVirtualMachinesApi(unittest.TestCase):
    """VirtualMachinesApi unit test stubs"""

    def setUp(self):
        self.api = harvester.api.virtual_machines_api.VirtualMachinesApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_namespaced_virtual_machine(self):
        """Test case for create_namespaced_virtual_machine

        """
        pass

    def test_delete_namespaced_virtual_machine(self):
        """Test case for delete_namespaced_virtual_machine

        """
        pass

    def test_list_namespaced_virtual_machine(self):
        """Test case for list_namespaced_virtual_machine

        """
        pass

    def test_list_namespaced_virtual_machine_instance(self):
        """Test case for list_namespaced_virtual_machine_instance

        """
        pass

    def test_list_virtual_machine_for_all_namespaces(self):
        """Test case for list_virtual_machine_for_all_namespaces

        """
        pass

    def test_list_virtual_machine_instance_for_all_namespaces(self):
        """Test case for list_virtual_machine_instance_for_all_namespaces

        """
        pass

    def test_patch_namespaced_virtual_machine(self):
        """Test case for patch_namespaced_virtual_machine

        """
        pass

    def test_read_namespaced_virtual_machine(self):
        """Test case for read_namespaced_virtual_machine

        """
        pass

    def test_read_namespaced_virtual_machine_instance(self):
        """Test case for read_namespaced_virtual_machine_instance

        """
        pass

    def test_replace_namespaced_virtual_machine(self):
        """Test case for replace_namespaced_virtual_machine

        """
        pass


if __name__ == '__main__':
    unittest.main()
