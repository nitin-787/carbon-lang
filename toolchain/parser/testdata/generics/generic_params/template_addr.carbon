// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{carbon-run-parser}
// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:   {kind: 'DeclaredName', text: 'foo'},
// CHECK:STDOUT:     {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:           {kind: 'DeclaredName', text: 'a'},
// CHECK:STDOUT:           {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:         {kind: 'GenericPatternBinding', text: ':!', subtree_size: 3},
// CHECK:STDOUT:       {kind: 'Address', text: 'addr', subtree_size: 4},
// CHECK:STDOUT:     {kind: 'Template', text: 'template', subtree_size: 5},
// CHECK:STDOUT:   {kind: 'ParameterList', text: ')', subtree_size: 7},
// CHECK:STDOUT: {kind: 'FunctionDeclaration', text: ';', subtree_size: 10},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn foo(template addr a:! i32);
