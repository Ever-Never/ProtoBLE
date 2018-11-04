/*
 * ProtoBLE - Protobuf RPC over Bluetooth Low Energy
 * Copyright (c) 2018. Geoffrey Matrangola, electrazoom.com
 *
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, version 3 of the License.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program.  If not, see <https://www.gnu.org/licenses/>
 *
 *     This program is also available under a commercial license. If you wish
 *     to redistribute this library and derivative work for commercial purposes
 *     please see ProtoBLE.com to obtain a proprietary license that will fit
 *     your needs.
 */

package com.electrazoom.codegen.android;

import com.electrazoom.codegen.BaseGenerator;
import com.google.protobuf.compiler.PluginProtos;

public class AndroidClientPlugin extends BaseGenerator {

    public AndroidClientPlugin() {
        super();
        setLogData(false);
    }

    public static void main(String args[]) {
        PluginProtos.CodeGeneratorResponse.Builder response =
                PluginProtos.CodeGeneratorResponse.newBuilder();

        AndroidClientPlugin generator = new AndroidClientPlugin();
        generator.addFileGenerator(new AndroidRpcClientGenerator(response));
        generator.processInput(args, response);
    }
}
