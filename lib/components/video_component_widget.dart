import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'video_component_model.dart';
export 'video_component_model.dart';

class VideoComponentWidget extends StatefulWidget {
  const VideoComponentWidget({
    Key? key,
    required this.videos,
  }) : super(key: key);

  final dynamic videos;

  @override
  _VideoComponentWidgetState createState() => _VideoComponentWidgetState();
}

class _VideoComponentWidgetState extends State<VideoComponentWidget> {
  late VideoComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final vidDt = getJsonField(
          widget.videos,
          r'''$[:]''',
        ).toList();
        return ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: vidDt.length,
          separatorBuilder: (_, __) => SizedBox(height: 12.0),
          itemBuilder: (context, vidDtIndex) {
            final vidDtItem = vidDt[vidDtIndex];
            return FlutterFlowYoutubePlayer(
              url: getJsonField(
                vidDtItem,
                r'''$.link''',
              ),
              autoPlay: false,
              looping: false,
              mute: false,
              showControls: true,
              showFullScreen: true,
            );
          },
        );
      },
    );
  }
}
