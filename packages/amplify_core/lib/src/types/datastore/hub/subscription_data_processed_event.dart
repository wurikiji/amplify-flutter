/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';

class SubscriptionDataProcessedEvent<M extends Model>
    extends DataStoreHubEventPayload {
  late HubEventElementWithMetadata<M> element;
  late String modelName;

  SubscriptionDataProcessedEvent(
    Map<dynamic, dynamic> serializedData,
    ModelProviderInterface provider,
  ) {
    element = HubEventElementWithMetadata.fromMap(serializedData, provider);
    modelName = serializedData['modelName'] as String;
  }
}
