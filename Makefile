include .project/go-project.mk

# don't echo execution
.SILENT:

.DEFAULT_GOAL := help

.PHONY: *

default: help
