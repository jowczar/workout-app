import 'package:flutter_svg/svg.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/add_cardio_screen/page/add_cardio_page.dart';
import 'package:workout_app/screens/add_exercise_screen/page/add_exercise_page.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/slidable_button.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/common_widgets/custom_button.dart';
import 'package:workout_app/screens/create_workout_plan_screen/bloc/create_workout_plan_screen_bloc.dart';

import '../../../data/training_plan.dart';
//

class CreateWorkoutPlanContent extends StatelessWidget {
  // const CreateWorkoutPlanContent({Key? key}) : super(key: key);
  CreateWorkoutPlanContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tymczasowa lista elementów
    List<String> exercises = ['Deadlift', 'Squat'];

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context, exercises),
          BlocBuilder<CreateWorkoutPlanScreenBloc,
              CreateWorkoutPlanScreenState>(
            buildWhen: (_, currState) => currState is LoadingState,
            builder: (context, state) {
              if (state is LoadingState) {
                return _createLoading();
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }

  Widget _createMainData(BuildContext context, List<String> exercises) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          const SizedBox(height: 20),
          Padding(
            padding: getPadding(top: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  TextConstant.createYourOwnTrainingPlan,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        if (exercises.isNotEmpty) _createForm(context),
                        const SizedBox(height: 60),
                        for (String exercise in exercises)
                          SlidableButton(
                            exerciseName: exercise,
                          ),
                        const SizedBox(height: 70),
                        CustomButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AddExercisePage(selectedIndex: 2)),
                              );
                            },
                            text: TextConstant.addExercise),
                        const SizedBox(height: 20),
                        CustomButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AddCardioPage(selectedIndex: 2)),
                            );
                          },
                          variant: ButtonVariant.Secondary,
                          text: TextConstant.addCardio,
                        ),
                      ],
                    ),
                  ),
                ),
                if (exercises.isNotEmpty)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: _createSaveButton(context),
                    ),
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _createSaveButton(BuildContext context) {
    final bloc = BlocProvider.of<CreateWorkoutPlanScreenBloc>(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<CreateWorkoutPlanScreenBloc,
            CreateWorkoutPlanScreenState>(builder: (context, state) {
          return CustomButton(
            onTap: () {
              bloc.add(SaveTrainingPlanEvent());
            },
            text: TextConstant.save,
            width: 238.0,
            variant: ButtonVariant.SaveButton,
          );
        }));
  }

  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<CreateWorkoutPlanScreenBloc>(context);
    return CustomTextField(
      title: "",
      textInputAction: TextInputAction.next,
      placeholder: TextConstant.planName,
      controller: bloc.nameController,
      errorText: "",
      isError: false,
      onTextChanged: () {},
    );
  }

  Widget _createLoading() {
    return Loader();
  }
}

/*
BIGOS - składniki:
1 i 1/2 kg kapusty kiszonej
750 g kapusty słodkiej
200 g wołowiny
200 g wieprzowiny (łopatka lub żeberka)
100 g wędzonego boczku
200 g kiełbasy
ok. 12 szt. grzybów suszonych
10 śliwek suszonych
2 liście laurowe
kilka ziaren pieprzu ziarnistego
kilka ziaren ziela angielskiego
2 cebule
1 łyżka smalcu do smażenia
sól
pieprz
majeranek
BIGOS - sposób przygotowania: Kapusty poszatkuj, przełóż do dużego garnka i zalej niewielką ilością wody. 
Do kapusty dodaj ziarna pieprzu i ziela angielskiego oraz liście laurowe. Doprowadź do wrzenia i gotuj na wolnym ogniu około półtorej godziny. 
Suszone grzyby zalej wrzątkiem, tak by woda lekko je przykryła i odstaw na godzinę. 
Po tym czasie odsącz je, pokrój w paski i dodaj do gotującej się kapusty. Ostrożnie, 
aby nie dodać piasku z grzybów, który mógł się osadzić na dnie naczynia, dolej też wodę, 
w której moczyły się grzyby. Wieprzowinę i wołowinę oczyść, umyj, pokrój w kostkę (tak jak do gulaszu) i podsmaż na smalcu na złoty kolor. 
Mięso przełóż do garnka z kapustą. Na tej samej patelni usmaż pokrojone w kostkę boczek i kiełbasę, a następnie przełóż je do garnka z kapustą i mięsem. 
Na tej samej patelni przesmaż posiekaną cebulę i też przełóż do garnka. Całość gotuj na wolnym ogniu co najmniej godzinę. 
Suszone śliwki pokrój na cienkie paseczki i dodaj do garnka. Bigos dopraw solą, pieprzem, majerankiem i wymieszaj. 
Aby bigos był gotowy, potrzebuje podgrzewania i chłodzenia przynajmniej przez trzy dni. 
Wystarczy, że raz dziennie będzie go gotować na wolnym ogniu przez mniej więcej godzinę. 
Podczas podgrzewania należy często mieszać i ewentualnie dolewać wody, aby się nie przypalił. 
Rady: - co dom, to inna wersja bigosu. My stosujemy zasadę, aby na 2 części kiszonej kapusty przypadała jedna część kapusty słodkiej. 
Jeśli kiszona kapusta jest bardzo kwaśna, przed szatkowaniem odlej sok, możesz też zwiększyć ilość kapusty słodkiej. 
- Podane wagi mięsa są wagami netto bez kości. Kości w żeberkach będą zmieniały wagę mięsa, musisz więc użyć go więcej. 
- Smak bigosu można tez wzbogacić wytrawnym winem, dolewając je do mięsa podczas smażenia i odparowując płyn lub do bigosu pod koniec gotowania pierwszego dnia. 
- Gotowy i ostudzony bigos można zamrozić.
 */
