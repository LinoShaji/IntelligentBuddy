import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Painter extends StatelessWidget {
  const Painter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffD9D9D9).withOpacity(0.55);
    canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(0,0,size.width,size.height),bottomRight: Radius.circular(size.width*0.06042296),bottomLeft:  Radius.circular(size.width*0.06042296),topLeft:  Radius.circular(size.width*0.06042296),topRight:  Radius.circular(size.width*0.06042296)),paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width*0.2653021,size.height*0.5043887);
    path_1.cubicTo(size.width*0.2653021,size.height*0.6700396,size.width*0.2875474,size.height*0.8047226,size.width*0.3148369,size.height*0.8047226);
    path_1.cubicTo(size.width*0.3421269,size.height*0.8047226,size.width*0.3643716,size.height*0.6700396,size.width*0.3643716,size.height*0.5043887);
    path_1.cubicTo(size.width*0.3643716,size.height*0.3387377,size.width*0.3421269,size.height*0.2040566,size.width*0.3148369,size.height*0.2040566);
    path_1.cubicTo(size.width*0.2875474,size.height*0.2040566,size.width*0.2653021,size.height*0.3387377,size.width*0.2653021,size.height*0.5043887);
    path_1.close();
    path_1.moveTo(size.width*0.2735870,size.height*0.5043887);
    path_1.cubicTo(size.width*0.2735870,size.height*0.3668245,size.width*0.2920517,size.height*0.2544774,size.width*0.3148369,size.height*0.2544774);
    path_1.cubicTo(size.width*0.3376224,size.height*0.2544774,size.width*0.3560846,size.height*0.3668245,size.width*0.3560846,size.height*0.5043887);
    path_1.cubicTo(size.width*0.3560846,size.height*0.6419547,size.width*0.3376224,size.height*0.7543000,size.width*0.3148369,size.height*0.7543000);
    path_1.cubicTo(size.width*0.2920517,size.height*0.7543000,size.width*0.2735870,size.height*0.6419547,size.width*0.2735870,size.height*0.5043887);
    path_1.close();

    Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001117825;
    paint_1_stroke.color=Colors.black.withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_stroke);

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff292D32).withOpacity(0.38);
    canvas.drawPath(path_1,paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width*0.3620876,size.height*0.8263226);
    path_2.cubicTo(size.width*0.3629154,size.height*0.8313415,size.width*0.3639668,size.height*0.8336792,size.width*0.3650091,size.height*0.8336792);
    path_2.cubicTo(size.width*0.3660514,size.height*0.8336792,size.width*0.3671027,size.height*0.8313415,size.width*0.3679305,size.height*0.8263226);
    path_2.cubicTo(size.width*0.3695408,size.height*0.8165528,size.width*0.3695408,size.height*0.8003849,size.width*0.3679305,size.height*0.7906151);
    path_2.lineTo(size.width*0.3583746,size.height*0.7326943);
    path_2.cubicTo(size.width*0.3567704,size.height*0.7229811,size.width*0.3541329,size.height*0.7229811,size.width*0.3525317,size.height*0.7326943);
    path_2.cubicTo(size.width*0.3509184,size.height*0.7424642,size.width*0.3509184,size.height*0.7586321,size.width*0.3525317,size.height*0.7684019);
    path_2.lineTo(size.width*0.3620876,size.height*0.8263226);
    path_2.close();

    Paint paint_2_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.001117825;
    paint_2_stroke.color=Colors.black.withOpacity(1.0);
    canvas.drawPath(path_2,paint_2_stroke);

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = Color(0xff292D32).withOpacity(0.38);
    canvas.drawPath(path_2,paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width*0.4427885,size.height*0.5081075);
    path_3.lineTo(size.width*0.4363897,size.height*0.5151830);
    path_3.cubicTo(size.width*0.4361239,size.height*0.5100736,size.width*0.4356979,size.height*0.5052075,size.width*0.4351148,size.height*0.5005887);
    path_3.cubicTo(size.width*0.4345498,size.height*0.4959717,size.width*0.4337795,size.height*0.4921868,size.width*0.4328036,size.height*0.4892396);
    path_3.cubicTo(size.width*0.4318278,size.height*0.4862906,size.width*0.4306073,size.height*0.4848170,size.width*0.4291450,size.height*0.4848170);
    path_3.cubicTo(size.width*0.4271450,size.height*0.4848170,size.width*0.4254773,size.height*0.4876170,size.width*0.4241420,size.height*0.4932189);
    path_3.cubicTo(size.width*0.4228036,size.height*0.4987226,size.width*0.4221360,size.height*0.5058472,size.width*0.4221360,size.height*0.5145925);
    path_3.cubicTo(size.width*0.4221360,size.height*0.5221604,size.width*0.4225831,size.height*0.5282528,size.width*0.4234804,size.height*0.5328717);
    path_3.cubicTo(size.width*0.4243776,size.height*0.5374906,size.width*0.4258248,size.height*0.5412736,size.width*0.4278218,size.height*0.5442208);
    path_3.lineTo(size.width*0.4335831,size.height*0.5524755);
    path_3.cubicTo(size.width*0.4369184,size.height*0.5572925,size.width*0.4394048,size.height*0.5647113,size.width*0.4410393,size.height*0.5747340);
    path_3.cubicTo(size.width*0.4426767,size.height*0.5847585,size.width*0.4434955,size.height*0.5977792,size.width*0.4434955,size.height*0.6137981);
    path_3.cubicTo(size.width*0.4434955,size.height*0.6273585,size.width*0.4428671,size.height*0.6394453,size.width*0.4416073,size.height*0.6500585);
    path_3.cubicTo(size.width*0.4403625,size.height*0.6605736,size.width*0.4386254,size.height*0.6688283,size.width*0.4363897,size.height*0.6748226);
    path_3.cubicTo(size.width*0.4341722,size.height*0.6808170,size.width*0.4315982,size.height*0.6838151,size.width*0.4286737,size.height*0.6838151);
    path_3.cubicTo(size.width*0.4246133,size.height*0.6838151,size.width*0.4213021,size.height*0.6784094,size.width*0.4187372,size.height*0.6676000);
    path_3.cubicTo(size.width*0.4161722,size.height*0.6566925,size.width*0.4145982,size.height*0.6412151,size.width*0.4140151,size.height*0.6211679);
    path_3.lineTo(size.width*0.4208369,size.height*0.6146811);
    path_3.cubicTo(size.width*0.4212628,size.height*0.6257868,size.width*0.4221360,size.height*0.6341887,size.width*0.4234562,size.height*0.6398887);
    path_3.cubicTo(size.width*0.4247795,size.height*0.6454887,size.width*0.4265015,size.height*0.6482906,size.width*0.4286254,size.height*0.6482906);
    path_3.cubicTo(size.width*0.4309396,size.height*0.6482906,size.width*0.4327885,size.height*0.6452925,size.width*0.4341722,size.height*0.6392981);
    path_3.cubicTo(size.width*0.4355559,size.height*0.6332057,size.width*0.4362477,size.height*0.6257868,size.width*0.4362477,size.height*0.6170396);
    path_3.cubicTo(size.width*0.4362477,size.height*0.6099642,size.width*0.4358248,size.height*0.6040189,size.width*0.4349758,size.height*0.5992038);
    path_3.cubicTo(size.width*0.4341420,size.height*0.5943887,size.width*0.4328580,size.height*0.5907528,size.width*0.4311269,size.height*0.5882962);
    path_3.lineTo(size.width*0.4249909,size.height*0.5798943);
    path_3.cubicTo(size.width*0.4216073,size.height*0.5750792,size.width*0.4191057,size.height*0.5674132,size.width*0.4174864,size.height*0.5568981);
    path_3.cubicTo(size.width*0.4158792,size.height*0.5463830,size.width*0.4150785,size.height*0.5330679,size.width*0.4150785,size.height*0.5169509);
    path_3.cubicTo(size.width*0.4150785,size.height*0.5035868,size.width*0.4156767,size.height*0.4918925,size.width*0.4168701,size.height*0.4818698);
    path_3.cubicTo(size.width*0.4180665,size.height*0.4718453,size.width*0.4197190,size.height*0.4640321,size.width*0.4218278,size.height*0.4584321);
    path_3.cubicTo(size.width*0.4239366,size.height*0.4527321,size.width*0.4263505,size.height*0.4498830,size.width*0.4290725,size.height*0.4498830);
    path_3.cubicTo(size.width*0.4329909,size.height*0.4498830,size.width*0.4360755,size.height*0.4551887,size.width*0.4383263,size.height*0.4658019);
    path_3.cubicTo(size.width*0.4405770,size.height*0.4763170,size.width*0.4420634,size.height*0.4904189,size.width*0.4427885,size.height*0.5081075);
    path_3.close();
    path_3.moveTo(size.width*0.4668792,size.height*0.6838151);
    path_3.cubicTo(size.width*0.4633082,size.height*0.6838151,size.width*0.4602326,size.height*0.6790491,size.width*0.4576495,size.height*0.6695170);
    path_3.cubicTo(size.width*0.4550846,size.height*0.6598868,size.width*0.4531027,size.height*0.6463736,size.width*0.4517039,size.height*0.6289792);
    path_3.cubicTo(size.width*0.4503172,size.height*0.6114887,size.width*0.4496254,size.height*0.5909981,size.width*0.4496254,size.height*0.5675113);
    path_3.cubicTo(size.width*0.4496254,size.height*0.5443208,size.width*0.4503172,size.height*0.5238792,size.width*0.4517039,size.height*0.5061906);
    path_3.cubicTo(size.width*0.4531027,size.height*0.4885019,size.width*0.4550544,size.height*0.4746962,size.width*0.4575559,size.height*0.4647698);
    path_3.cubicTo(size.width*0.4600755,size.height*0.4548453,size.width*0.4630151,size.height*0.4498830,size.width*0.4663837,size.height*0.4498830);
    path_3.cubicTo(size.width*0.4684290,size.height*0.4498830,size.width*0.4704109,size.height*0.4519943,size.width*0.4723323,size.height*0.4562208);
    path_3.cubicTo(size.width*0.4742508,size.height*0.4604453,size.width*0.4759758,size.height*0.4670792,size.width*0.4775015,size.height*0.4761208);
    path_3.cubicTo(size.width*0.4790272,size.height*0.4851604,size.width*0.4802296,size.height*0.4969038,size.width*0.4811118,size.height*0.5113509);
    path_3.cubicTo(size.width*0.4819940,size.height*0.5256981,size.width*0.4824350,size.height*0.5431415,size.width*0.4824350,size.height*0.5636792);
    path_3.lineTo(size.width*0.4824350,size.height*0.5793038);
    path_3.lineTo(size.width*0.4536133,size.height*0.5793038);
    path_3.lineTo(size.width*0.4536133,size.height*0.5462849);
    path_3.lineTo(size.width*0.4755166,size.height*0.5462849);
    path_3.cubicTo(size.width*0.4755166,size.height*0.5346887,size.width*0.4751390,size.height*0.5244208,size.width*0.4743837,size.height*0.5154774);
    path_3.cubicTo(size.width*0.4736284,size.height*0.5064358,size.width*0.4725680,size.height*0.4993113,size.width*0.4711994,size.height*0.4941038);
    path_3.cubicTo(size.width*0.4698459,size.height*0.4888962,size.width*0.4682568,size.height*0.4862906,size.width*0.4664320,size.height*0.4862906);
    path_3.cubicTo(size.width*0.4644471,size.height*0.4862906,size.width*0.4627190,size.height*0.4893377,size.width*0.4612387,size.height*0.4954302);
    path_3.cubicTo(size.width*0.4597764,size.height*0.5014245,size.width*0.4586435,size.height*0.5092868,size.width*0.4578399,size.height*0.5190151);
    path_3.cubicTo(size.width*0.4570544,size.height*0.5286453,size.width*0.4566586,size.height*0.5391113,size.width*0.4566586,size.height*0.5504132);
    path_3.lineTo(size.width*0.4566586,size.height*0.5762094);
    path_3.cubicTo(size.width*0.4566586,size.height*0.5913415,size.width*0.4570846,size.height*0.6042151,size.width*0.4579335,size.height*0.6148283);
    path_3.cubicTo(size.width*0.4588006,size.height*0.6254415,size.width*0.4600030,size.height*0.6335491,size.width*0.4615438,size.height*0.6391509);
    path_3.cubicTo(size.width*0.4630876,size.height*0.6446547,size.width*0.4648882,size.height*0.6474057,size.width*0.4669517,size.height*0.6474057);
    path_3.cubicTo(size.width*0.4682870,size.height*0.6474057,size.width*0.4695076,size.height*0.6462264,size.width*0.4706073,size.height*0.6438679);
    path_3.cubicTo(size.width*0.4717100,size.height*0.6414113,size.width*0.4726616,size.height*0.6377755,size.width*0.4734653,size.height*0.6329604);
    path_3.cubicTo(size.width*0.4742659,size.height*0.6281453,size.width*0.4748822,size.height*0.6222000,size.width*0.4753051,size.height*0.6151245);
    path_3.lineTo(size.width*0.4819849,size.height*0.6226415);
    path_3.cubicTo(size.width*0.4814502,size.height*0.6349245,size.width*0.4804894,size.height*0.6456868,size.width*0.4791057,size.height*0.6549226);
    path_3.cubicTo(size.width*0.4777372,size.height*0.6640623,size.width*0.4760151,size.height*0.6711868,size.width*0.4739366,size.height*0.6762962);
    path_3.cubicTo(size.width*0.4718761,size.height*0.6813094,size.width*0.4695227,size.height*0.6838151,size.width*0.4668792,size.height*0.6838151);
    path_3.close();
    path_3.moveTo(size.width*0.5008157,size.height*0.6842566);
    path_3.cubicTo(size.width*0.4985166,size.height*0.6842566,size.width*0.4964411,size.height*0.6816038,size.width*0.4945831,size.height*0.6762962);
    path_3.cubicTo(size.width*0.4927251,size.height*0.6708925,size.width*0.4912538,size.height*0.6630792,size.width*0.4901692,size.height*0.6528604);
    path_3.cubicTo(size.width*0.4890997,size.height*0.6426396,size.width*0.4885650,size.height*0.6301094,size.width*0.4885650,size.height*0.6152717);
    path_3.cubicTo(size.width*0.4885650,size.height*0.6024962,size.width*0.4889577,size.height*0.5919811,size.width*0.4897432,size.height*0.5837264);
    path_3.cubicTo(size.width*0.4905317,size.height*0.5754717,size.width*0.4915921,size.height*0.5689358,size.width*0.4929305,size.height*0.5641208);
    path_3.cubicTo(size.width*0.4942689,size.height*0.5593057,size.width*0.4957644,size.height*0.5556698,size.width*0.4974169,size.height*0.5532132);
    path_3.cubicTo(size.width*0.4990665,size.height*0.5507566,size.width*0.5007523,size.height*0.5488887,size.width*0.5024653,size.height*0.5476113);
    path_3.cubicTo(size.width*0.5046375,size.height*0.5460396,size.width*0.5063988,size.height*0.5447623,size.width*0.5077523,size.height*0.5437792);
    path_3.cubicTo(size.width*0.5091057,size.height*0.5426981,size.width*0.5100906,size.height*0.5409792,size.width*0.5107039,size.height*0.5386208);
    path_3.cubicTo(size.width*0.5113172,size.height*0.5362623,size.width*0.5116254,size.height*0.5324283,size.width*0.5116254,size.height*0.5271226);
    path_3.lineTo(size.width*0.5116254,size.height*0.5260906);
    path_3.cubicTo(size.width*0.5116254,size.height*0.5132170,size.width*0.5110423,size.height*0.5032434,size.width*0.5098792,size.height*0.4961679);
    path_3.cubicTo(size.width*0.5087281,size.height*0.4890925,size.width*0.5070151,size.height*0.4855547,size.width*0.5047311,size.height*0.4855547);
    path_3.cubicTo(size.width*0.5023565,size.height*0.4855547,size.width*0.5004834,size.height*0.4888472,size.width*0.4991148,size.height*0.4954302);
    path_3.cubicTo(size.width*0.4977613,size.height*0.5019170,size.width*0.4968248,size.height*0.5091396,size.width*0.4963051,size.height*0.5170981);
    path_3.lineTo(size.width*0.4896737,size.height*0.5076642);
    path_3.cubicTo(size.width*0.4904592,size.height*0.4939075,size.width*0.4916103,size.height*0.4828019,size.width*0.4931208,size.height*0.4743509);
    path_3.cubicTo(size.width*0.4946465,size.height*0.4658019,size.width*0.4964018,size.height*0.4596113,size.width*0.4983837,size.height*0.4557774);
    path_3.cubicTo(size.width*0.5003656,size.height*0.4518472,size.width*0.5024502,size.height*0.4498830,size.width*0.5046375,size.height*0.4498830);
    path_3.cubicTo(size.width*0.5060846,size.height*0.4498830,size.width*0.5076193,size.height*0.4509623,size.width*0.5092417,size.height*0.4531245);
    path_3.cubicTo(size.width*0.5108761,size.height*0.4551887,size.width*0.5124018,size.height*0.4590208,size.width*0.5138187,size.height*0.4646226);
    path_3.cubicTo(size.width*0.5152508,size.height*0.4702245,size.width*0.5164230,size.height*0.4782340,size.width*0.5173353,size.height*0.4886491);
    path_3.cubicTo(size.width*0.5182477,size.height*0.4989679,size.width*0.5187039,size.height*0.5123830,size.width*0.5187039,size.height*0.5288925);
    path_3.lineTo(size.width*0.5187039,size.height*0.6792453);
    path_3.lineTo(size.width*0.5118127,size.height*0.6792453);
    path_3.lineTo(size.width*0.5118127,size.height*0.6482906);
    path_3.lineTo(size.width*0.5115287,size.height*0.6482906);
    path_3.cubicTo(size.width*0.5110725,size.height*0.6539906,size.width*0.5103897,size.height*0.6595906,size.width*0.5094773,size.height*0.6650943);
    path_3.cubicTo(size.width*0.5085650,size.height*0.6705981,size.width*0.5073927,size.height*0.6751679,size.width*0.5059607,size.height*0.6788038);
    path_3.cubicTo(size.width*0.5045287,size.height*0.6824396,size.width*0.5028127,size.height*0.6842566,size.width*0.5008157,size.height*0.6842566);
    path_3.close();
    path_3.moveTo(size.width*0.5023474,size.height*0.6488792);
    path_3.cubicTo(size.width*0.5042991,size.height*0.6488792,size.width*0.5059668,size.height*0.6464717,size.width*0.5073535,size.height*0.6416566);
    path_3.cubicTo(size.width*0.5087523,size.height*0.6368415,size.width*0.5098157,size.height*0.6305528,size.width*0.5105378,size.height*0.6227887);
    path_3.cubicTo(size.width*0.5112779,size.height*0.6149264,size.width*0.5116465,size.height*0.6065245,size.width*0.5116465,size.height*0.5975830);
    path_3.lineTo(size.width*0.5116465,size.height*0.5683962);
    path_3.cubicTo(size.width*0.5113958,size.height*0.5699679,size.width*0.5109094,size.height*0.5714434,size.width*0.5101843,size.height*0.5728189);
    path_3.cubicTo(size.width*0.5094773,size.height*0.5740962,size.width*0.5086647,size.height*0.5752264,size.width*0.5077523,size.height*0.5762094);
    path_3.cubicTo(size.width*0.5068399,size.height*0.5770925,size.width*0.5059517,size.height*0.5779283,size.width*0.5050876,size.height*0.5787151);
    path_3.cubicTo(size.width*0.5042205,size.height*0.5794019,size.width*0.5034985,size.height*0.5799925,size.width*0.5029154,size.height*0.5804830);
    path_3.cubicTo(size.width*0.5015468,size.height*0.5815642,size.width*0.5002961,size.height*0.5833830,size.width*0.4991631,size.height*0.5859377);
    path_3.cubicTo(size.width*0.4980453,size.height*0.5884925,size.width*0.4971480,size.height*0.5921774,size.width*0.4964713,size.height*0.5969925);
    path_3.cubicTo(size.width*0.4958097,size.height*0.6017094,size.width*0.4954804,size.height*0.6080000,size.width*0.4954804,size.height*0.6158604);
    path_3.cubicTo(size.width*0.4954804,size.height*0.6267679,size.width*0.4961239,size.height*0.6350226,size.width*0.4974169,size.height*0.6406245);
    path_3.cubicTo(size.width*0.4987069,size.height*0.6461283,size.width*0.5003505,size.height*0.6488792,size.width*0.5023474,size.height*0.6488792);
    path_3.close();
    path_3.moveTo(size.width*0.5281057,size.height*0.6792453);
    path_3.lineTo(size.width*0.5281057,size.height*0.4528302);
    path_3.lineTo(size.width*0.5349275,size.height*0.4528302);
    path_3.lineTo(size.width*0.5349275,size.height*0.4887962);
    path_3.lineTo(size.width*0.5353051,size.height*0.4887962);
    path_3.cubicTo(size.width*0.5359637,size.height*0.4766113,size.width*0.5371299,size.height*0.4670302,size.width*0.5387976,size.height*0.4600528);
    path_3.cubicTo(size.width*0.5404804,size.height*0.4529774,size.width*0.5423837,size.height*0.4494396,size.width*0.5445076,size.height*0.4494396);
    path_3.cubicTo(size.width*0.5449486,size.height*0.4494396,size.width*0.5454683,size.height*0.4495377,size.width*0.5460665,size.height*0.4497340);
    path_3.cubicTo(size.width*0.5466798,size.height*0.4499321,size.width*0.5471601,size.height*0.4501774,size.width*0.5475076,size.height*0.4504717);
    path_3.lineTo(size.width*0.5475076,size.height*0.4926302);
    path_3.cubicTo(size.width*0.5472236,size.height*0.4921377,size.width*0.5467190,size.height*0.4915981,size.width*0.5459970,size.height*0.4910075);
    path_3.cubicTo(size.width*0.5452719,size.height*0.4903208,size.width*0.5445468,size.height*0.4899755,size.width*0.5438248,size.height*0.4899755);
    path_3.cubicTo(size.width*0.5421571,size.height*0.4899755,size.width*0.5406707,size.height*0.4921868,size.width*0.5393625,size.height*0.4966094);
    path_3.cubicTo(size.width*0.5380725,size.height*0.5009340,size.width*0.5370514,size.height*0.5069774,size.width*0.5362961,size.height*0.5147396);
    path_3.cubicTo(size.width*0.5355408,size.height*0.5224057,size.width*0.5351631,size.height*0.5311509,size.width*0.5351631,size.height*0.5409792);
    path_3.lineTo(size.width*0.5351631,size.height*0.6792453);
    path_3.lineTo(size.width*0.5281057,size.height*0.6792453);
    path_3.close();
    path_3.moveTo(size.width*0.5675861,size.height*0.6838151);
    path_3.cubicTo(size.width*0.5640785,size.height*0.6838151,size.width*0.5610574,size.height*0.6788528,size.width*0.5585227,size.height*0.6689264);
    path_3.cubicTo(size.width*0.5560060,size.height*0.6589038,size.width*0.5540695,size.height*0.6450962,size.width*0.5527160,size.height*0.6275057);
    path_3.cubicTo(size.width*0.5513625,size.height*0.6099151,size.width*0.5506858,size.height*0.5897698,size.width*0.5506858,size.height*0.5670698);
    path_3.cubicTo(size.width*0.5506858,size.height*0.5440736,size.width*0.5513807,size.height*0.5237811,size.width*0.5527644,size.height*0.5061906);
    path_3.cubicTo(size.width*0.5541480,size.height*0.4885019,size.width*0.5560997,size.height*0.4746962,size.width*0.5586163,size.height*0.4647698);
    path_3.cubicTo(size.width*0.5611360,size.height*0.4548453,size.width*0.5640997,size.height*0.4498830,size.width*0.5675166,size.height*0.4498830);
    path_3.cubicTo(size.width*0.5702689,size.height*0.4498830,size.width*0.5727251,size.height*0.4530755,size.width*0.5748792,size.height*0.4594642);
    path_3.cubicTo(size.width*0.5770363,size.height*0.4657528,size.width*0.5787734,size.height*0.4745962,size.width*0.5800967,size.height*0.4859962);
    path_3.cubicTo(size.width*0.5814320,size.height*0.4973962,size.width*0.5822266,size.height*0.5107113,size.width*0.5824804,size.height*0.5259434);
    path_3.lineTo(size.width*0.5756103,size.height*0.5259434);
    path_3.cubicTo(size.width*0.5752326,size.height*0.5153302,size.width*0.5743686,size.height*0.5061906,size.width*0.5730151,size.height*0.4985264);
    path_3.cubicTo(size.width*0.5716767,size.height*0.4908604,size.width*0.5698852,size.height*0.4870283,size.width*0.5676344,size.height*0.4870283);
    path_3.cubicTo(size.width*0.5656677,size.height*0.4870283,size.width*0.5639426,size.height*0.4902717,size.width*0.5624653,size.height*0.4967566);
    path_3.cubicTo(size.width*0.5610000,size.height*0.5031453,size.width*0.5598610,size.height*0.5122830,size.width*0.5590423,size.height*0.5241736);
    path_3.cubicTo(size.width*0.5582236,size.height*0.5359660,size.width*0.5578157,size.height*0.5499208,size.width*0.5578157,size.height*0.5660377);
    path_3.cubicTo(size.width*0.5578157,size.height*0.5825472,size.width*0.5582175,size.height*0.5967962,size.width*0.5590181,size.height*0.6087849);
    path_3.cubicTo(size.width*0.5598218,size.height*0.6207736,size.width*0.5609547,size.height*0.6300604,size.width*0.5624169,size.height*0.6366453);
    path_3.cubicTo(size.width*0.5638973,size.height*0.6432283,size.width*0.5656344,size.height*0.6465208,size.width*0.5676344,size.height*0.6465208);
    path_3.cubicTo(size.width*0.5689698,size.height*0.6465208,size.width*0.5701813,size.height*0.6449981,size.width*0.5712689,size.height*0.6419509);
    path_3.cubicTo(size.width*0.5723686,size.height*0.6388075,size.width*0.5732900,size.height*0.6343358,size.width*0.5740302,size.height*0.6285377);
    path_3.cubicTo(size.width*0.5747855,size.height*0.6227396,size.width*0.5753112,size.height*0.6157623,size.width*0.5756103,size.height*0.6076057);
    path_3.lineTo(size.width*0.5824804,size.height*0.6076057);
    path_3.cubicTo(size.width*0.5822266,size.height*0.6222491,size.width*0.5814653,size.height*0.6353189,size.width*0.5801903,size.height*0.6468151);
    path_3.cubicTo(size.width*0.5789154,size.height*0.6583132,size.width*0.5772085,size.height*0.6673547,size.width*0.5750695,size.height*0.6739377);
    path_3.cubicTo(size.width*0.5729456,size.height*0.6805226,size.width*0.5704502,size.height*0.6838151,size.width*0.5675861,size.height*0.6838151);
    path_3.close();
    path_3.moveTo(size.width*0.5970846,size.height*0.5448113);
    path_3.lineTo(size.width*0.5970846,size.height*0.6792453);
    path_3.lineTo(size.width*0.5900272,size.height*0.6792453);
    path_3.lineTo(size.width*0.5900272,size.height*0.3773585);
    path_3.lineTo(size.width*0.5969909,size.height*0.3773585);
    path_3.lineTo(size.width*0.5969909,size.height*0.4896811);
    path_3.lineTo(size.width*0.5974381,size.height*0.4896811);
    path_3.cubicTo(size.width*0.5982870,size.height*0.4774962,size.width*0.5995861,size.height*0.4678170,size.width*0.6013323,size.height*0.4606434);
    path_3.cubicTo(size.width*0.6030785,size.height*0.4534698,size.width*0.6053595,size.height*0.4498830,size.width*0.6081782,size.height*0.4498830);
    path_3.cubicTo(size.width*0.6106647,size.height*0.4498830,size.width*0.6128338,size.height*0.4530755,size.width*0.6146918,size.height*0.4594642);
    path_3.cubicTo(size.width*0.6165650,size.height*0.4658509,size.width*0.6180121,size.height*0.4753830,size.width*0.6190332,size.height*0.4880604);
    path_3.cubicTo(size.width*0.6200725,size.height*0.5006396,size.width*0.6205921,size.height*0.5163623,size.width*0.6205921,size.height*0.5352302);
    path_3.lineTo(size.width*0.6205921,size.height*0.6792453);
    path_3.lineTo(size.width*0.6135347,size.height*0.6792453);
    path_3.lineTo(size.width*0.6135347,size.height*0.5405358);
    path_3.cubicTo(size.width*0.6135347,size.height*0.5239283,size.width*0.6128520,size.height*0.5110547,size.width*0.6114804,size.height*0.5019170);
    path_3.cubicTo(size.width*0.6101118,size.height*0.4926792,size.width*0.6082085,size.height*0.4880604,size.width*0.6057704,size.height*0.4880604);
    path_3.cubicTo(size.width*0.6041027,size.height*0.4880604,size.width*0.6026073,size.height*0.4902717,size.width*0.6012840,size.height*0.4946925);
    path_3.cubicTo(size.width*0.5999789,size.height*0.4991151,size.width*0.5989486,size.height*0.5056019,size.width*0.5981934,size.height*0.5141509);
    path_3.cubicTo(size.width*0.5974532,size.height*0.5226019,size.width*0.5970846,size.height*0.5328226,size.width*0.5970846,size.height*0.5448113);
    path_3.close();

    Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
    paint_3_fill.color = Color(0xff4E3D3D).withOpacity(0.61);
    canvas.drawPath(path_3,paint_3_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
// Widget Frame2(){
//   return CustomPaint(
//     painter: RPSCustomPainter(),
//     child: Container(height: 400,width: 400,child: Text(" ")),
//   );
// }
// Widget ProfileContainer() {
//   return CustomPaint(
//     size: Size.square(200),
//     painter: RPSCustomPainter(),
//     child: Container(width: 230, height: 250),
//   );
// }
//
// Widget CountContainer() {
//   return Container(alignment: Alignment.center,width: 100,height: 190,margin: EdgeInsets.only(right: 13),
//     child: Text(" C "),
//     decoration: BoxDecoration(
//         color: Color(0xff55665A), borderRadius: BorderRadius.circular(20)),
//   );
// }
//
// Widget DataContainer() {
//   return CustomPaint(
//     painter: CountCustomPainter(),
//     child: Container(
//         alignment: Alignment.center,
//         height: 47,
//         width: 125,
//         child: Text(" D ")),
//   );
// }
//
// final String assetnmame = 'lib/asset/svg/Union.svg';
// final Widget svg = SvgPicture.asset(assetnmame);
//
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(0, size.height * 0.09803922);
//     path_0.cubicTo(0, size.height * 0.04389379, size.width * 0.04762943, 0,
//         size.width * 0.1063830, 0);
//     path_0.lineTo(size.width * 0.7554539, 0);
//     path_0.cubicTo(
//         size.width * 0.7772128,
//         0,
//         size.width * 0.7977660,
//         size.height * 0.009205033,
//         size.width * 0.8112128,
//         size.height * 0.02497078);
//     path_0.lineTo(size.width * 0.9763121, size.height * 0.2185539);
//     path_0.cubicTo(
//         size.width * 0.9858972,
//         size.height * 0.2297915,
//         size.width * 0.9912199,
//         size.height * 0.2436147,
//         size.width * 0.9914645,
//         size.height * 0.2579062);
//     path_0.lineTo(size.width * 0.9946596, size.height * 0.4434542);
//     path_0.lineTo(size.width * 0.9978085, size.height * 0.9334837);
//     path_0.cubicTo(
//         size.width * 0.9980390,
//         size.height * 0.9697288,
//         size.width * 0.9662199,
//         size.height * 0.9992288,
//         size.width * 0.9268865,
//         size.height * 0.9992288);
//     path_0.lineTo(size.width * 0.1063830, size.height * 0.9992288);
//     path_0.cubicTo(size.width * 0.04762908, size.height * 0.9992288, 0,
//         size.height * 0.9553366, 0, size.height * 0.9011895);
//     path_0.lineTo(0, size.height * 0.09803922);
//     path_0.close();
//
//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Color(0xff40513B).withOpacity(1.0);
//     canvas.drawPath(path_0, paint_0_fill);
//
//     Path path_1 = Path();
//     path_1.moveTo(0, size.height * 0.09803922);
//     path_1.cubicTo(0, size.height * 0.04389379, size.width * 0.04762943, 0,
//         size.width * 0.1063830, 0);
//     path_1.lineTo(size.width * 0.7554539, 0);
//     path_1.cubicTo(
//         size.width * 0.7772128,
//         0,
//         size.width * 0.7977660,
//         size.height * 0.009205033,
//         size.width * 0.8112128,
//         size.height * 0.02497078);
//     path_1.lineTo(size.width * 0.9763121, size.height * 0.2185539);
//     path_1.cubicTo(
//         size.width * 0.9858972,
//         size.height * 0.2297915,
//         size.width * 0.9912199,
//         size.height * 0.2436147,
//         size.width * 0.9914645,
//         size.height * 0.2579062);
//     path_1.lineTo(size.width * 0.9946596, size.height * 0.4434542);
//     path_1.lineTo(size.width * 0.9978085, size.height * 0.9334837);
//     path_1.cubicTo(
//         size.width * 0.9980390,
//         size.height * 0.9697288,
//         size.width * 0.9662199,
//         size.height * 0.9992288,
//         size.width * 0.9268865,
//         size.height * 0.9992288);
//     path_1.lineTo(size.width * 0.1063830, size.height * 0.9992288);
//     path_1.cubicTo(size.width * 0.04762908, size.height * 0.9992288, 0,
//         size.height * 0.9553366, 0, size.height * 0.9011895);
//     path_1.lineTo(0, size.height * 0.09803922);
//     path_1.close();
//
//     Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
//     paint_1_fill.color = Colors.black.withOpacity(0.2);
//     canvas.drawPath(path_1, paint_1_fill);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
//
// class CountCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(0, 0);
//     path_0.lineTo(size.width * 0.8062016, 0);
//     path_0.cubicTo(size.width * 0.9132326, 0, size.width,
//         size.height * 0.1865483, size.width, size.height * 0.4166667);
//     path_0.lineTo(size.width, size.height);
//     path_0.lineTo(size.width * 0.4340860, size.height);
//     path_0.cubicTo(
//         size.width * 0.3657256,
//         size.height,
//         size.width * 0.3016736,
//         size.height * 0.9282250,
//         size.width * 0.2625186,
//         size.height * 0.8077483);
//     path_0.lineTo(0, 0);
//     path_0.close();
//
//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Color(0xff40513B).withOpacity(0.85);
//     canvas.drawPath(path_0, paint_0_fill);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class Frame2CustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width*0.6480000,size.height*0.009433962);
//     path_0.lineTo(size.width*0.9253333,size.height*0.009433962);
//     path_0.cubicTo(size.width*0.9621520,size.height*0.009433962,size.width*0.9920000,size.height*0.04463176,size.width*0.9920000,size.height*0.08805031);
//     path_0.lineTo(size.width*0.9920000,size.height*0.1981132);
//     path_0.lineTo(size.width*0.7973253,size.height*0.1981132);
//     path_0.cubicTo(size.width*0.7738107,size.height*0.1981132,size.width*0.7517760,size.height*0.1845708,size.width*0.7383067,size.height*0.1618393);
//     path_0.lineTo(size.width*0.6480000,size.height*0.009433962);
//     path_0.close();
//
//     Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
//     paint_0_fill.color = Color(0xff40513B).withOpacity(0.85);
//     canvas.drawPath(path_0,paint_0_fill);
//
//     Path path_1 = Path();
//     path_1.moveTo(0,size.height*0.09433962);
//     path_1.cubicTo(0,size.height*0.04223742,size.width*0.03581733,0,size.width*0.08000000,0);
//     path_1.lineTo(size.width*0.5681013,0);
//     path_1.cubicTo(size.width*0.5844640,0,size.width*0.5999200,size.height*0.008857673,size.width*0.6100320,size.height*0.02402849);
//     path_1.lineTo(size.width*0.7341867,size.height*0.2103066);
//     path_1.cubicTo(size.width*0.7413947,size.height*0.2211201,size.width*0.7453973,size.height*0.2344217,size.width*0.7455813,size.height*0.2481739);
//     path_1.lineTo(size.width*0.7479840,size.height*0.4267201);
//     path_1.lineTo(size.width*0.7503520,size.height*0.8982579);
//     path_1.cubicTo(size.width*0.7505253,size.height*0.9331352,size.width*0.7265973,size.height*0.9615220,size.width*0.6970187,size.height*0.9615220);
//     path_1.lineTo(size.width*0.08000000,size.height*0.9615220);
//     path_1.cubicTo(size.width*0.03581707,size.height*0.9615220,0,size.height*0.9192862,0,size.height*0.8671824);
//     path_1.lineTo(0,size.height*0.09433962);
//     path_1.close();
//
//     Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
//     paint_1_fill.color = Color(0xff40513B).withOpacity(1.0);
//     canvas.drawPath(path_1,paint_1_fill);
//
//     Path path_2 = Path();
//     path_2.moveTo(0,size.height*0.09433962);
//     path_2.cubicTo(0,size.height*0.04223742,size.width*0.03581733,0,size.width*0.08000000,0);
//     path_2.lineTo(size.width*0.5681013,0);
//     path_2.cubicTo(size.width*0.5844640,0,size.width*0.5999200,size.height*0.008857673,size.width*0.6100320,size.height*0.02402849);
//     path_2.lineTo(size.width*0.7341867,size.height*0.2103066);
//     path_2.cubicTo(size.width*0.7413947,size.height*0.2211201,size.width*0.7453973,size.height*0.2344217,size.width*0.7455813,size.height*0.2481739);
//     path_2.lineTo(size.width*0.7479840,size.height*0.4267201);
//     path_2.lineTo(size.width*0.7503520,size.height*0.8982579);
//     path_2.cubicTo(size.width*0.7505253,size.height*0.9331352,size.width*0.7265973,size.height*0.9615220,size.width*0.6970187,size.height*0.9615220);
//     path_2.lineTo(size.width*0.08000000,size.height*0.9615220);
//     path_2.cubicTo(size.width*0.03581707,size.height*0.9615220,0,size.height*0.9192862,0,size.height*0.8671824);
//     path_2.lineTo(0,size.height*0.09433962);
//     path_2.close();
//
//     Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
//     paint_2_fill.color = Colors.black.withOpacity(0.2);
//     canvas.drawPath(path_2,paint_2_fill);
//
//     Path path_3 = Path();
//     path_3.moveTo(size.width*0.7733333,size.height*0.2955975);
//     path_3.cubicTo(size.width*0.7733333,size.height*0.2608626,size.width*0.7972107,size.height*0.2327044,size.width*0.8266667,size.height*0.2327044);
//     path_3.lineTo(size.width*0.9386667,size.height*0.2327044);
//     path_3.cubicTo(size.width*0.9681227,size.height*0.2327044,size.width*0.9920000,size.height*0.2608626,size.width*0.9920000,size.height*0.2955975);
//     path_3.lineTo(size.width*0.9920000,size.height*0.8993711);
//     path_3.cubicTo(size.width*0.9920000,size.height*0.9341069,size.width*0.9681227,size.height*0.9622642,size.width*0.9386667,size.height*0.9622642);
//     path_3.lineTo(size.width*0.8266667,size.height*0.9622642);
//     path_3.cubicTo(size.width*0.7972107,size.height*0.9622642,size.width*0.7733333,size.height*0.9341069,size.width*0.7733333,size.height*0.8993711);
//     path_3.lineTo(size.width*0.7733333,size.height*0.2955975);
//     path_3.close();
//
//     Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
//     paint_3_fill.color = Color(0xff55665A).withOpacity(1.0);
//     canvas.drawPath(path_3,paint_3_fill);
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }