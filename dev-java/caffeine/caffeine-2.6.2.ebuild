# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

JAVA_PKG_IUSE="doc source test"
MAVEN_ID="com.github.ben-manes.caffeine:caffeine:${PV}"
JAVA_TESTING_FRAMEWORKS="junit-4"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A high performance caching library"
HOMEPAGE="https://github.com/ben-manes/caffeine"
SRC_URI="https://repo1.maven.org/maven2/com/github/ben-manes/caffeine/caffeine/${PV}/caffeine-${PV}-sources.jar"
# Compiling from Github would require to be packaged at least
# package com.squareup.javapoet
# package MethodSpec
# package TypeSpec
# SRC_URI="https://github.com/ben-manes/caffeine/archive/v${PV}.tar.gz -> ${P}.tar.gz"
# S="${WORKDIR}/${P}/caffeine"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ppc64"

BDEPEND="app-arch/unzip"
CP_DEPEND="dev-java/jsr305:0"
DEPEND="${CP_DEPEND}
	>=virtual/jdk-1.8:*"
RDEPEND="${CP_DEPEND}
	>=virtual/jre-1.8:*"

JAVA_AUTOMATIC_MODULE_NAME="com.github.benmanes.caffeine"
