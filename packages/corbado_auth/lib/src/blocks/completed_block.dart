import 'package:corbado_auth/src/blocks/types.dart';
import 'package:corbado_auth/src/process_handler.dart';
import 'package:corbado_frontend_api_client/corbado_frontend_api_client.dart';

class CompletedBlockData {
  final String shortSession;
  final String? longSession;

  CompletedBlockData(this.shortSession, this.longSession);

  factory CompletedBlockData.fromProcessResponse(GeneralBlockCompleted typed) {
    return CompletedBlockData(typed.shortSession, typed.longSession);
  }
}

class CompletedBlock extends Block<CompletedBlockData> {
  CompletedBlock({required ProcessHandler processHandler, required CompletedBlockData data})
      : super(
          processHandler: processHandler,
          type: BlockType.completed,
          alternatives: [],
          data: data,
          authProcessType: AuthProcessType.Login,
        );
}
