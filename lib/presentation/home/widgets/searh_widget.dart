import 'package:diamond_store/core/assets/assets.gen.dart';
import 'package:diamond_store/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: TextFormField(
        controller: _searchController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search Game',
          hintStyle: const TextStyle(
            fontSize: 11,
            color: AppColors.colorGray,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.icons.search.path),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.colorBlack,
            ),
          ),
          contentPadding:
              const EdgeInsets.only(top: 20, left: 10, right: 10),
        ),
        cursorColor: AppColors.colorBlack,
        style: const TextStyle(
          fontSize: 11,
          color: Colors.black,
        ),
      ),
    );
  }
}