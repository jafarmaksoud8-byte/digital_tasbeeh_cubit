import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh_app/constatnt/app_color.dart';
import 'package:tasbeeh_app/cubit/tasbeeh_cubit.dart';
import 'package:tasbeeh_app/ui/widgets/container_widget.dart';
import 'package:tasbeeh_app/ui/widgets/text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.kPrimaryColor2,
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                ContainerWidget(
                  onBack: () {
                    BlocProvider.of<TasbeehCubit>(context).previousZikr();
                  },
                  onForward: () {
                    BlocProvider.of<TasbeehCubit>(context).nextZikr();
                  },
                  tasbeeh: BlocProvider.of<TasbeehCubit>(context).tasbeeh,
                  currentIndex: state.currentIndex,
                ),
                SizedBox(height: 20),
                TextWidget(
                  text: '${state.counter}/32',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kPrimaryColor3,
                ),
                SizedBox(height: 20),
                TextWidget(
                  text: 'Round ${state.round} ',
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kPrimaryColor3,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 80),
                        side: BorderSide(
                          color: AppColor.kPrimaryColor1,
                          width: 3,
                        ),
                      ),
                      onPressed: () {
                        BlocProvider.of<TasbeehCubit>(context).reset();
                      },
                      child: TextWidget(
                        text: 'Reset',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.kPrimaryColor3,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    BlocProvider.of<TasbeehCubit>(context).increment();
                  },
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: AppColor.kPrimaryColor4,
                    child: TextWidget(
                      text: 'سبح',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.kPrimaryColor6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
