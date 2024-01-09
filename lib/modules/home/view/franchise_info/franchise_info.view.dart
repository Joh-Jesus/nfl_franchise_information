import 'package:flutter/material.dart';
import 'package:nfl_franchise_information/utils/formatters/value_cents.formatter.dart';
import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';

class FranchiseInfoWidget extends StatelessWidget {
  const FranchiseInfoWidget({super.key, required this.franchise});
  final IFranchiseModel franchise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          franchise.name,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.grey.shade300,
        leading: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: InfoCardWidget(
                  firstTextLeft: "Cidade: ",
                  firstTextRight: franchise.country,
                  secondTextLeft: "Fundação: ",
                  secondTextRight: franchise.foundationYear.toString(),
                  imgUrl: franchise.franchiseImg,
                )),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.grey.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  InfoWidget(
                    textLeft: "Titulos de SuperBowl ",
                    textRight: franchise.superbowlWinner.toString(),
                  ),
                  InfoWidget(textLeft: "Conferência ", textRight: franchise.conferenceName),
                  InfoWidget(
                    textLeft: "Titulos de Conferência ",
                    textRight: franchise.conferenceWinner.toString(),
                  ),
                  InfoWidget(textLeft: "Divisão ", textRight: franchise.divisionName),
                  InfoWidget(
                    textLeft: "Titulos de Divisão ",
                    textRight: franchise.divisionWinner.toString(),
                  ),
                  InfoWidget(
                    textLeft: "Estádio ",
                    textRight: franchise.stadium,
                  ),
                  InfoWidget(
                    textLeft: "Valor",
                    textRight: formatString(franchise.franchiseValue.toString()),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      "Franchise Player",
                      style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Nome: ",
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
                            children: [
                              TextSpan(
                                text: franchise.franchisePlayerName,
                                style: const TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Posição: ",
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
                            children: [
                              TextSpan(
                                text: franchise.franchisePlayerPosition,
                                style: const TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(child: Image.network(franchise.franchisePlayerImg)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.textLeft, required this.textRight});

  final String textLeft;
  final String textRight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textLeft,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(
            textRight,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
    required this.imgUrl,
    required this.firstTextLeft,
    required this.firstTextRight,
    required this.secondTextLeft,
    required this.secondTextRight,
    this.scaleImg = 7,
  });

  final String imgUrl;
  final String firstTextLeft;
  final String firstTextRight;
  final String secondTextLeft;
  final String secondTextRight;
  final double scaleImg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(48),
            image: DecorationImage(
              image: NetworkImage(imgUrl, scale: scaleImg),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: firstTextLeft,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
                  children: [
                    TextSpan(
                      text: firstTextRight,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: secondTextLeft,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
                  children: [
                    TextSpan(
                      text: secondTextRight,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
