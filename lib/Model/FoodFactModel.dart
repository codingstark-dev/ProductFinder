import 'dart:convert';

class OpenFoodFact {
    final String? code;
    final List<dynamic>? errors;
    final Product? product;
    final Result? result;
    final String? status;
    final List<dynamic>? warnings;

    OpenFoodFact({
        this.code,
        this.errors,
        this.product,
        this.result,
        this.status,
        this.warnings,
    });

    factory OpenFoodFact.fromRawJson(String str) => OpenFoodFact.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory OpenFoodFact.fromJson(Map<String, dynamic> json) => OpenFoodFact(
        code: json["code"],
        errors: json["errors"] == null ? [] : List<dynamic>.from(json["errors"]!.map((x) => x)),
        product: json["product"] == null ? null : Product.fromJson(json["product"]),
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
        status: json["status"],
        warnings: json["warnings"] == null ? [] : List<dynamic>.from(json["warnings"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "errors": errors == null ? [] : List<dynamic>.from(errors!.map((x) => x)),
        "product": product?.toJson(),
        "result": result?.toJson(),
        "status": status,
        "warnings": warnings == null ? [] : List<dynamic>.from(warnings!.map((x) => x)),
    };
}

class Product {
    final String? id;
    final List<String>? keywords;
    final List<dynamic>? addedCountriesTags;
    final int? additivesN;
    final int? additivesOldN;
    final List<String>? additivesOldTags;
    final List<String>? additivesOriginalTags;
    final List<String>? additivesTags;
    final String? allergens;
    final String? allergensFromIngredients;
    final String? allergensFromUser;
    final List<String>? allergensHierarchy;
    final List<String>? allergensTags;
    final List<dynamic>? aminoAcidsTags;
    final String? brands;
    final List<String>? brandsTags;
    final String? categories;
    final List<String>? categoriesHierarchy;
    final String? categoriesLc;
    final String? categoriesOld;
    final CategoriesProperties? categoriesProperties;
    final List<String>? categoriesPropertiesTags;
    final List<String>? categoriesTags;
    final List<dynamic>? checkersTags;
    final String? code;
    final List<String>? codesTags;
    final String? comparedToCategory;
    final int? complete;
    final double? completeness;
    final List<String>? correctorsTags;
    final String? countries;
    final List<String>? countriesHierarchy;
    final List<String>? countriesTags;
    final int? createdT;
    final String? creator;
    final List<dynamic>? dataQualityBugsTags;
    final List<dynamic>? dataQualityErrorsTags;
    final List<String>? dataQualityInfoTags;
    final List<String>? dataQualityTags;
    final List<String>? dataQualityWarningsTags;
    final String? dataSources;
    final List<String>? dataSourcesTags;
    final EcoscoreData? ecoscoreData;
    final EcoscoreGrade? ecoscoreGrade;
    final int? ecoscoreScore;
    final List<EcoscoreGrade>? ecoscoreTags;
    final List<String>? editorsTags;
    final List<String>? entryDatesTags;
    final String? foodGroups;
    final List<String>? foodGroupsTags;
    final String? productId;
    final String? imageFrontSmallUrl;
    final String? imageFrontThumbUrl;
    final String? imageFrontUrl;
    final String? imageIngredientsSmallUrl;
    final String? imageIngredientsThumbUrl;
    final String? imageIngredientsUrl;
    final String? imageNutritionSmallUrl;
    final String? imageNutritionThumbUrl;
    final String? imageNutritionUrl;
    final String? imagePackagingSmallUrl;
    final String? imagePackagingThumbUrl;
    final String? imagePackagingUrl;
    final String? imageSmallUrl;
    final String? imageThumbUrl;
    final String? imageUrl;
    final Images? images;
    final List<String>? informersTags;
    final List<ProductIngredient>? ingredients;
    final IngredientsAnalysis? ingredientsAnalysis;
    final List<String>? ingredientsAnalysisTags;
    final int? ingredientsFromOrThatMayBeFromPalmOilN;
    final int? ingredientsFromPalmOilN;
    final List<dynamic>? ingredientsFromPalmOilTags;
    final List<String>? ingredientsHierarchy;
    final int? ingredientsN;
    final List<String>? ingredientsNTags;
    final List<String>? ingredientsOriginalTags;
    final int? ingredientsPercentAnalysis;
    final List<String>? ingredientsTags;
    final String? ingredientsText;
    final String? ingredientsTextEn;
    final String? ingredientsTextWithAllergens;
    final String? ingredientsTextWithAllergensEn;
    final int? ingredientsThatMayBeFromPalmOilN;
    final List<dynamic>? ingredientsThatMayBeFromPalmOilTags;
    final int? ingredientsWithSpecifiedPercentN;
    final int? ingredientsWithSpecifiedPercentSum;
    final int? ingredientsWithUnspecifiedPercentN;
    final int? ingredientsWithUnspecifiedPercentSum;
    final List<String>? ingredientsWithoutCiqualCodes;
    final int? ingredientsWithoutCiqualCodesN;
    final String? interfaceVersionCreated;
    final String? interfaceVersionModified;
    final int? knownIngredientsN;
    final String? labels;
    final List<String>? labelsHierarchy;
    final String? labelsLc;
    final String? labelsOld;
    final List<String>? labelsTags;
    final String? lang;
    final Languages? languages;
    final LanguagesCodes? languagesCodes;
    final List<String>? languagesHierarchy;
    final List<String>? languagesTags;
    final List<String>? lastEditDatesTags;
    final String? lastEditor;
    final List<String>? lastImageDatesTags;
    final int? lastImageT;
    final String? lastModifiedBy;
    final int? lastModifiedT;
    final int? lastUpdatedT;
    final String? lc;
    final List<dynamic>? mainCountriesTags;
    final String? maxImgid;
    final List<dynamic>? mineralsTags;
    final List<String>? miscTags;
    final String? noNutritionData;
    final int? novaGroup;
    final String? novaGroupDebug;
    final String? novaGroups;
    final Map<String, List<List<String>>>? novaGroupsMarkers;
    final List<String>? novaGroupsTags;
    final List<dynamic>? nucleotidesTags;
    final NutrientLevels? nutrientLevels;
    final List<String>? nutrientLevelsTags;
    final Nutriments? nutriments;
    final Map<String, Nutriscore>? nutriscore;
    final List<EcoscoreGrade>? nutriscore2021Tags;
    final List<String>? nutriscore2023Tags;
    final NutriscoreData? nutriscoreData;
    final EcoscoreGrade? nutriscoreGrade;
    final int? nutriscoreScore;
    final int? nutriscoreScoreOpposite;
    final List<EcoscoreGrade>? nutriscoreTags;
    final String? nutriscoreVersion;
    final String? nutritionData;
    final String? nutritionDataPer;
    final String? nutritionDataPreparedPer;
    final EcoscoreGrade? nutritionGradeFr;
    final EcoscoreGrade? nutritionGrades;
    final List<EcoscoreGrade>? nutritionGradesTags;
    final int? nutritionScoreBeverage;
    final String? nutritionScoreDebug;
    final int? nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients;
    final int? nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue;
    final int? nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients;
    final int? nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue;
    final int? nutritionScoreWarningNoFiber;
    final List<dynamic>? otherNutritionalSubstancesTags;
    final List<dynamic>? packagingMaterialsTags;
    final List<dynamic>? packagingRecyclingTags;
    final List<dynamic>? packagingShapesTags;
    final List<dynamic>? packagings;
    final PackagingsMaterials? packagingsMaterials;
    final List<String>? photographersTags;
    final String? pnnsGroups1;
    final List<String>? pnnsGroups1Tags;
    final String? pnnsGroups2;
    final List<String>? pnnsGroups2Tags;
    final int? popularityKey;
    final List<String>? popularityTags;
    final String? productName;
    final String? productNameEn;
    final String? productQuantity;
    final String? quantity;
    final List<dynamic>? removedCountriesTags;
    final int? rev;
    final int? scansN;
    final SelectedImages? selectedImages;
    final String? servingQuantity;
    final String? servingSize;
    final String? states;
    final List<String>? statesHierarchy;
    final List<String>? statesTags;
    final String? traces;
    final String? tracesFromIngredients;
    final String? tracesFromUser;
    final List<dynamic>? tracesHierarchy;
    final List<dynamic>? tracesTags;
    final int? uniqueScansN;
    final int? unknownIngredientsN;
    final List<dynamic>? unknownNutrientsTags;
    final String? updateKey;
    final List<dynamic>? vitaminsTags;
    final List<dynamic>? weighersTags;

    Product({
        this.id,
        this.keywords,
        this.addedCountriesTags,
        this.additivesN,
        this.additivesOldN,
        this.additivesOldTags,
        this.additivesOriginalTags,
        this.additivesTags,
        this.allergens,
        this.allergensFromIngredients,
        this.allergensFromUser,
        this.allergensHierarchy,
        this.allergensTags,
        this.aminoAcidsTags,
        this.brands,
        this.brandsTags,
        this.categories,
        this.categoriesHierarchy,
        this.categoriesLc,
        this.categoriesOld,
        this.categoriesProperties,
        this.categoriesPropertiesTags,
        this.categoriesTags,
        this.checkersTags,
        this.code,
        this.codesTags,
        this.comparedToCategory,
        this.complete,
        this.completeness,
        this.correctorsTags,
        this.countries,
        this.countriesHierarchy,
        this.countriesTags,
        this.createdT,
        this.creator,
        this.dataQualityBugsTags,
        this.dataQualityErrorsTags,
        this.dataQualityInfoTags,
        this.dataQualityTags,
        this.dataQualityWarningsTags,
        this.dataSources,
        this.dataSourcesTags,
        this.ecoscoreData,
        this.ecoscoreGrade,
        this.ecoscoreScore,
        this.ecoscoreTags,
        this.editorsTags,
        this.entryDatesTags,
        this.foodGroups,
        this.foodGroupsTags,
        this.productId,
        this.imageFrontSmallUrl,
        this.imageFrontThumbUrl,
        this.imageFrontUrl,
        this.imageIngredientsSmallUrl,
        this.imageIngredientsThumbUrl,
        this.imageIngredientsUrl,
        this.imageNutritionSmallUrl,
        this.imageNutritionThumbUrl,
        this.imageNutritionUrl,
        this.imagePackagingSmallUrl,
        this.imagePackagingThumbUrl,
        this.imagePackagingUrl,
        this.imageSmallUrl,
        this.imageThumbUrl,
        this.imageUrl,
        this.images,
        this.informersTags,
        this.ingredients,
        this.ingredientsAnalysis,
        this.ingredientsAnalysisTags,
        this.ingredientsFromOrThatMayBeFromPalmOilN,
        this.ingredientsFromPalmOilN,
        this.ingredientsFromPalmOilTags,
        this.ingredientsHierarchy,
        this.ingredientsN,
        this.ingredientsNTags,
        this.ingredientsOriginalTags,
        this.ingredientsPercentAnalysis,
        this.ingredientsTags,
        this.ingredientsText,
        this.ingredientsTextEn,
        this.ingredientsTextWithAllergens,
        this.ingredientsTextWithAllergensEn,
        this.ingredientsThatMayBeFromPalmOilN,
        this.ingredientsThatMayBeFromPalmOilTags,
        this.ingredientsWithSpecifiedPercentN,
        this.ingredientsWithSpecifiedPercentSum,
        this.ingredientsWithUnspecifiedPercentN,
        this.ingredientsWithUnspecifiedPercentSum,
        this.ingredientsWithoutCiqualCodes,
        this.ingredientsWithoutCiqualCodesN,
        this.interfaceVersionCreated,
        this.interfaceVersionModified,
        this.knownIngredientsN,
        this.labels,
        this.labelsHierarchy,
        this.labelsLc,
        this.labelsOld,
        this.labelsTags,
        this.lang,
        this.languages,
        this.languagesCodes,
        this.languagesHierarchy,
        this.languagesTags,
        this.lastEditDatesTags,
        this.lastEditor,
        this.lastImageDatesTags,
        this.lastImageT,
        this.lastModifiedBy,
        this.lastModifiedT,
        this.lastUpdatedT,
        this.lc,
        this.mainCountriesTags,
        this.maxImgid,
        this.mineralsTags,
        this.miscTags,
        this.noNutritionData,
        this.novaGroup,
        this.novaGroupDebug,
        this.novaGroups,
        this.novaGroupsMarkers,
        this.novaGroupsTags,
        this.nucleotidesTags,
        this.nutrientLevels,
        this.nutrientLevelsTags,
        this.nutriments,
        this.nutriscore,
        this.nutriscore2021Tags,
        this.nutriscore2023Tags,
        this.nutriscoreData,
        this.nutriscoreGrade,
        this.nutriscoreScore,
        this.nutriscoreScoreOpposite,
        this.nutriscoreTags,
        this.nutriscoreVersion,
        this.nutritionData,
        this.nutritionDataPer,
        this.nutritionDataPreparedPer,
        this.nutritionGradeFr,
        this.nutritionGrades,
        this.nutritionGradesTags,
        this.nutritionScoreBeverage,
        this.nutritionScoreDebug,
        this.nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients,
        this.nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue,
        this.nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients,
        this.nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue,
        this.nutritionScoreWarningNoFiber,
        this.otherNutritionalSubstancesTags,
        this.packagingMaterialsTags,
        this.packagingRecyclingTags,
        this.packagingShapesTags,
        this.packagings,
        this.packagingsMaterials,
        this.photographersTags,
        this.pnnsGroups1,
        this.pnnsGroups1Tags,
        this.pnnsGroups2,
        this.pnnsGroups2Tags,
        this.popularityKey,
        this.popularityTags,
        this.productName,
        this.productNameEn,
        this.productQuantity,
        this.quantity,
        this.removedCountriesTags,
        this.rev,
        this.scansN,
        this.selectedImages,
        this.servingQuantity,
        this.servingSize,
        this.states,
        this.statesHierarchy,
        this.statesTags,
        this.traces,
        this.tracesFromIngredients,
        this.tracesFromUser,
        this.tracesHierarchy,
        this.tracesTags,
        this.uniqueScansN,
        this.unknownIngredientsN,
        this.unknownNutrientsTags,
        this.updateKey,
        this.vitaminsTags,
        this.weighersTags,
    });

    factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        keywords: json["_keywords"] == null ? [] : List<String>.from(json["_keywords"]!.map((x) => x)),
        addedCountriesTags: json["added_countries_tags"] == null ? [] : List<dynamic>.from(json["added_countries_tags"]!.map((x) => x)),
        additivesN: json["additives_n"],
        additivesOldN: json["additives_old_n"],
        additivesOldTags: json["additives_old_tags"] == null ? [] : List<String>.from(json["additives_old_tags"]!.map((x) => x)),
        additivesOriginalTags: json["additives_original_tags"] == null ? [] : List<String>.from(json["additives_original_tags"]!.map((x) => x)),
        additivesTags: json["additives_tags"] == null ? [] : List<String>.from(json["additives_tags"]!.map((x) => x)),
        allergens: json["allergens"],
        allergensFromIngredients: json["allergens_from_ingredients"],
        allergensFromUser: json["allergens_from_user"],
        allergensHierarchy: json["allergens_hierarchy"] == null ? [] : List<String>.from(json["allergens_hierarchy"]!.map((x) => x)),
        allergensTags: json["allergens_tags"] == null ? [] : List<String>.from(json["allergens_tags"]!.map((x) => x)),
        aminoAcidsTags: json["amino_acids_tags"] == null ? [] : List<dynamic>.from(json["amino_acids_tags"]!.map((x) => x)),
        brands: json["brands"],
        brandsTags: json["brands_tags"] == null ? [] : List<String>.from(json["brands_tags"]!.map((x) => x)),
        categories: json["categories"],
        categoriesHierarchy: json["categories_hierarchy"] == null ? [] : List<String>.from(json["categories_hierarchy"]!.map((x) => x)),
        categoriesLc: json["categories_lc"],
        categoriesOld: json["categories_old"],
        categoriesProperties: json["categories_properties"] == null ? null : CategoriesProperties.fromJson(json["categories_properties"]),
        categoriesPropertiesTags: json["categories_properties_tags"] == null ? [] : List<String>.from(json["categories_properties_tags"]!.map((x) => x)),
        categoriesTags: json["categories_tags"] == null ? [] : List<String>.from(json["categories_tags"]!.map((x) => x)),
        checkersTags: json["checkers_tags"] == null ? [] : List<dynamic>.from(json["checkers_tags"]!.map((x) => x)),
        code: json["code"],
        codesTags: json["codes_tags"] == null ? [] : List<String>.from(json["codes_tags"]!.map((x) => x)),
        comparedToCategory: json["compared_to_category"],
        complete: json["complete"],
        completeness: json["completeness"]?.toDouble(),
        correctorsTags: json["correctors_tags"] == null ? [] : List<String>.from(json["correctors_tags"]!.map((x) => x)),
        countries: json["countries"],
        countriesHierarchy: json["countries_hierarchy"] == null ? [] : List<String>.from(json["countries_hierarchy"]!.map((x) => x)),
        countriesTags: json["countries_tags"] == null ? [] : List<String>.from(json["countries_tags"]!.map((x) => x)),
        createdT: json["created_t"],
        creator: json["creator"],
        dataQualityBugsTags: json["data_quality_bugs_tags"] == null ? [] : List<dynamic>.from(json["data_quality_bugs_tags"]!.map((x) => x)),
        dataQualityErrorsTags: json["data_quality_errors_tags"] == null ? [] : List<dynamic>.from(json["data_quality_errors_tags"]!.map((x) => x)),
        dataQualityInfoTags: json["data_quality_info_tags"] == null ? [] : List<String>.from(json["data_quality_info_tags"]!.map((x) => x)),
        dataQualityTags: json["data_quality_tags"] == null ? [] : List<String>.from(json["data_quality_tags"]!.map((x) => x)),
        dataQualityWarningsTags: json["data_quality_warnings_tags"] == null ? [] : List<String>.from(json["data_quality_warnings_tags"]!.map((x) => x)),
        dataSources: json["data_sources"],
        dataSourcesTags: json["data_sources_tags"] == null ? [] : List<String>.from(json["data_sources_tags"]!.map((x) => x)),
        ecoscoreData: json["ecoscore_data"] == null ? null : EcoscoreData.fromJson(json["ecoscore_data"]),
        ecoscoreGrade: ecoscoreGradeValues.map[json["ecoscore_grade"]]!,
        ecoscoreScore: json["ecoscore_score"],
        ecoscoreTags: json["ecoscore_tags"] == null ? [] : List<EcoscoreGrade>.from(json["ecoscore_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        editorsTags: json["editors_tags"] == null ? [] : List<String>.from(json["editors_tags"]!.map((x) => x)),
        entryDatesTags: json["entry_dates_tags"] == null ? [] : List<String>.from(json["entry_dates_tags"]!.map((x) => x)),
        foodGroups: json["food_groups"],
        foodGroupsTags: json["food_groups_tags"] == null ? [] : List<String>.from(json["food_groups_tags"]!.map((x) => x)),
        productId: json["id"],
        imageFrontSmallUrl: json["image_front_small_url"],
        imageFrontThumbUrl: json["image_front_thumb_url"],
        imageFrontUrl: json["image_front_url"],
        imageIngredientsSmallUrl: json["image_ingredients_small_url"],
        imageIngredientsThumbUrl: json["image_ingredients_thumb_url"],
        imageIngredientsUrl: json["image_ingredients_url"],
        imageNutritionSmallUrl: json["image_nutrition_small_url"],
        imageNutritionThumbUrl: json["image_nutrition_thumb_url"],
        imageNutritionUrl: json["image_nutrition_url"],
        imagePackagingSmallUrl: json["image_packaging_small_url"],
        imagePackagingThumbUrl: json["image_packaging_thumb_url"],
        imagePackagingUrl: json["image_packaging_url"],
        imageSmallUrl: json["image_small_url"],
        imageThumbUrl: json["image_thumb_url"],
        imageUrl: json["image_url"],
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        informersTags: json["informers_tags"] == null ? [] : List<String>.from(json["informers_tags"]!.map((x) => x)),
        ingredients: json["ingredients"] == null ? [] : List<ProductIngredient>.from(json["ingredients"]!.map((x) => ProductIngredient.fromJson(x))),
        ingredientsAnalysis: json["ingredients_analysis"] == null ? null : IngredientsAnalysis.fromJson(json["ingredients_analysis"]),
        ingredientsAnalysisTags: json["ingredients_analysis_tags"] == null ? [] : List<String>.from(json["ingredients_analysis_tags"]!.map((x) => x)),
        ingredientsFromOrThatMayBeFromPalmOilN: json["ingredients_from_or_that_may_be_from_palm_oil_n"],
        ingredientsFromPalmOilN: json["ingredients_from_palm_oil_n"],
        ingredientsFromPalmOilTags: json["ingredients_from_palm_oil_tags"] == null ? [] : List<dynamic>.from(json["ingredients_from_palm_oil_tags"]!.map((x) => x)),
        ingredientsHierarchy: json["ingredients_hierarchy"] == null ? [] : List<String>.from(json["ingredients_hierarchy"]!.map((x) => x)),
        ingredientsN: json["ingredients_n"],
        ingredientsNTags: json["ingredients_n_tags"] == null ? [] : List<String>.from(json["ingredients_n_tags"]!.map((x) => x)),
        ingredientsOriginalTags: json["ingredients_original_tags"] == null ? [] : List<String>.from(json["ingredients_original_tags"]!.map((x) => x)),
        ingredientsPercentAnalysis: json["ingredients_percent_analysis"],
        ingredientsTags: json["ingredients_tags"] == null ? [] : List<String>.from(json["ingredients_tags"]!.map((x) => x)),
        ingredientsText: json["ingredients_text"],
        ingredientsTextEn: json["ingredients_text_en"],
        ingredientsTextWithAllergens: json["ingredients_text_with_allergens"],
        ingredientsTextWithAllergensEn: json["ingredients_text_with_allergens_en"],
        ingredientsThatMayBeFromPalmOilN: json["ingredients_that_may_be_from_palm_oil_n"],
        ingredientsThatMayBeFromPalmOilTags: json["ingredients_that_may_be_from_palm_oil_tags"] == null ? [] : List<dynamic>.from(json["ingredients_that_may_be_from_palm_oil_tags"]!.map((x) => x)),
        ingredientsWithSpecifiedPercentN: json["ingredients_with_specified_percent_n"],
        ingredientsWithSpecifiedPercentSum: json["ingredients_with_specified_percent_sum"],
        ingredientsWithUnspecifiedPercentN: json["ingredients_with_unspecified_percent_n"],
        ingredientsWithUnspecifiedPercentSum: json["ingredients_with_unspecified_percent_sum"],
        ingredientsWithoutCiqualCodes: json["ingredients_without_ciqual_codes"] == null ? [] : List<String>.from(json["ingredients_without_ciqual_codes"]!.map((x) => x)),
        ingredientsWithoutCiqualCodesN: json["ingredients_without_ciqual_codes_n"],
        interfaceVersionCreated: json["interface_version_created"],
        interfaceVersionModified: json["interface_version_modified"],
        knownIngredientsN: json["known_ingredients_n"],
        labels: json["labels"],
        labelsHierarchy: json["labels_hierarchy"] == null ? [] : List<String>.from(json["labels_hierarchy"]!.map((x) => x)),
        labelsLc: json["labels_lc"],
        labelsOld: json["labels_old"],
        labelsTags: json["labels_tags"] == null ? [] : List<String>.from(json["labels_tags"]!.map((x) => x)),
        lang: json["lang"],
        languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
        languagesCodes: json["languages_codes"] == null ? null : LanguagesCodes.fromJson(json["languages_codes"]),
        languagesHierarchy: json["languages_hierarchy"] == null ? [] : List<String>.from(json["languages_hierarchy"]!.map((x) => x)),
        languagesTags: json["languages_tags"] == null ? [] : List<String>.from(json["languages_tags"]!.map((x) => x)),
        lastEditDatesTags: json["last_edit_dates_tags"] == null ? [] : List<String>.from(json["last_edit_dates_tags"]!.map((x) => x)),
        lastEditor: json["last_editor"],
        lastImageDatesTags: json["last_image_dates_tags"] == null ? [] : List<String>.from(json["last_image_dates_tags"]!.map((x) => x)),
        lastImageT: json["last_image_t"],
        lastModifiedBy: json["last_modified_by"],
        lastModifiedT: json["last_modified_t"],
        lastUpdatedT: json["last_updated_t"],
        lc: json["lc"],
        mainCountriesTags: json["main_countries_tags"] == null ? [] : List<dynamic>.from(json["main_countries_tags"]!.map((x) => x)),
        maxImgid: json["max_imgid"],
        mineralsTags: json["minerals_tags"] == null ? [] : List<dynamic>.from(json["minerals_tags"]!.map((x) => x)),
        miscTags: json["misc_tags"] == null ? [] : List<String>.from(json["misc_tags"]!.map((x) => x)),
        noNutritionData: json["no_nutrition_data"],
        novaGroup: json["nova_group"],
        novaGroupDebug: json["nova_group_debug"],
        novaGroups: json["nova_groups"],
        novaGroupsMarkers: Map.from(json["nova_groups_markers"]!).map((k, v) => MapEntry<String, List<List<String>>>(k, List<List<String>>.from(v.map((x) => List<String>.from(x.map((x) => x)))))),
        novaGroupsTags: json["nova_groups_tags"] == null ? [] : List<String>.from(json["nova_groups_tags"]!.map((x) => x)),
        nucleotidesTags: json["nucleotides_tags"] == null ? [] : List<dynamic>.from(json["nucleotides_tags"]!.map((x) => x)),
        nutrientLevels: json["nutrient_levels"] == null ? null : NutrientLevels.fromJson(json["nutrient_levels"]),
        nutrientLevelsTags: json["nutrient_levels_tags"] == null ? [] : List<String>.from(json["nutrient_levels_tags"]!.map((x) => x)),
        nutriments: json["nutriments"] == null ? null : Nutriments.fromJson(json["nutriments"]),
        nutriscore: Map.from(json["nutriscore"]!).map((k, v) => MapEntry<String, Nutriscore>(k, Nutriscore.fromJson(v))),
        nutriscore2021Tags: json["nutriscore_2021_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutriscore_2021_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutriscore2023Tags: json["nutriscore_2023_tags"] == null ? [] : List<String>.from(json["nutriscore_2023_tags"]!.map((x) => x)),
        nutriscoreData: json["nutriscore_data"] == null ? null : NutriscoreData.fromJson(json["nutriscore_data"]),
        nutriscoreGrade: ecoscoreGradeValues.map[json["nutriscore_grade"]]!,
        nutriscoreScore: json["nutriscore_score"],
        nutriscoreScoreOpposite: json["nutriscore_score_opposite"],
        nutriscoreTags: json["nutriscore_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutriscore_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutriscoreVersion: json["nutriscore_version"],
        nutritionData: json["nutrition_data"],
        nutritionDataPer: json["nutrition_data_per"],
        nutritionDataPreparedPer: json["nutrition_data_prepared_per"],
        nutritionGradeFr: ecoscoreGradeValues.map[json["nutrition_grade_fr"]]!,
        nutritionGrades: ecoscoreGradeValues.map[json["nutrition_grades"]]!,
        nutritionGradesTags: json["nutrition_grades_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutrition_grades_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutritionScoreBeverage: json["nutrition_score_beverage"],
        nutritionScoreDebug: json["nutrition_score_debug"],
        nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients: json["nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients"],
        nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue: json["nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients_value"],
        nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients: json["nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients"],
        nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue: json["nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value"],
        nutritionScoreWarningNoFiber: json["nutrition_score_warning_no_fiber"],
        otherNutritionalSubstancesTags: json["other_nutritional_substances_tags"] == null ? [] : List<dynamic>.from(json["other_nutritional_substances_tags"]!.map((x) => x)),
        packagingMaterialsTags: json["packaging_materials_tags"] == null ? [] : List<dynamic>.from(json["packaging_materials_tags"]!.map((x) => x)),
        packagingRecyclingTags: json["packaging_recycling_tags"] == null ? [] : List<dynamic>.from(json["packaging_recycling_tags"]!.map((x) => x)),
        packagingShapesTags: json["packaging_shapes_tags"] == null ? [] : List<dynamic>.from(json["packaging_shapes_tags"]!.map((x) => x)),
        packagings: json["packagings"] == null ? [] : List<dynamic>.from(json["packagings"]!.map((x) => x)),
        packagingsMaterials: json["packagings_materials"] == null ? null : PackagingsMaterials.fromJson(json["packagings_materials"]),
        photographersTags: json["photographers_tags"] == null ? [] : List<String>.from(json["photographers_tags"]!.map((x) => x)),
        pnnsGroups1: json["pnns_groups_1"],
        pnnsGroups1Tags: json["pnns_groups_1_tags"] == null ? [] : List<String>.from(json["pnns_groups_1_tags"]!.map((x) => x)),
        pnnsGroups2: json["pnns_groups_2"],
        pnnsGroups2Tags: json["pnns_groups_2_tags"] == null ? [] : List<String>.from(json["pnns_groups_2_tags"]!.map((x) => x)),
        popularityKey: json["popularity_key"],
        popularityTags: json["popularity_tags"] == null ? [] : List<String>.from(json["popularity_tags"]!.map((x) => x)),
        productName: json["product_name"],
        productNameEn: json["product_name_en"],
        productQuantity: json["product_quantity"],
        quantity: json["quantity"],
        removedCountriesTags: json["removed_countries_tags"] == null ? [] : List<dynamic>.from(json["removed_countries_tags"]!.map((x) => x)),
        rev: json["rev"],
        scansN: json["scans_n"],
        selectedImages: json["selected_images"] == null ? null : SelectedImages.fromJson(json["selected_images"]),
        servingQuantity: json["serving_quantity"],
        servingSize: json["serving_size"],
        states: json["states"],
        statesHierarchy: json["states_hierarchy"] == null ? [] : List<String>.from(json["states_hierarchy"]!.map((x) => x)),
        statesTags: json["states_tags"] == null ? [] : List<String>.from(json["states_tags"]!.map((x) => x)),
        traces: json["traces"],
        tracesFromIngredients: json["traces_from_ingredients"],
        tracesFromUser: json["traces_from_user"],
        tracesHierarchy: json["traces_hierarchy"] == null ? [] : List<dynamic>.from(json["traces_hierarchy"]!.map((x) => x)),
        tracesTags: json["traces_tags"] == null ? [] : List<dynamic>.from(json["traces_tags"]!.map((x) => x)),
        uniqueScansN: json["unique_scans_n"],
        unknownIngredientsN: json["unknown_ingredients_n"],
        unknownNutrientsTags: json["unknown_nutrients_tags"] == null ? [] : List<dynamic>.from(json["unknown_nutrients_tags"]!.map((x) => x)),
        updateKey: json["update_key"],
        vitaminsTags: json["vitamins_tags"] == null ? [] : List<dynamic>.from(json["vitamins_tags"]!.map((x) => x)),
        weighersTags: json["weighers_tags"] == null ? [] : List<dynamic>.from(json["weighers_tags"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "_keywords": keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "added_countries_tags": addedCountriesTags == null ? [] : List<dynamic>.from(addedCountriesTags!.map((x) => x)),
        "additives_n": additivesN,
        "additives_old_n": additivesOldN,
        "additives_old_tags": additivesOldTags == null ? [] : List<dynamic>.from(additivesOldTags!.map((x) => x)),
        "additives_original_tags": additivesOriginalTags == null ? [] : List<dynamic>.from(additivesOriginalTags!.map((x) => x)),
        "additives_tags": additivesTags == null ? [] : List<dynamic>.from(additivesTags!.map((x) => x)),
        "allergens": allergens,
        "allergens_from_ingredients": allergensFromIngredients,
        "allergens_from_user": allergensFromUser,
        "allergens_hierarchy": allergensHierarchy == null ? [] : List<dynamic>.from(allergensHierarchy!.map((x) => x)),
        "allergens_tags": allergensTags == null ? [] : List<dynamic>.from(allergensTags!.map((x) => x)),
        "amino_acids_tags": aminoAcidsTags == null ? [] : List<dynamic>.from(aminoAcidsTags!.map((x) => x)),
        "brands": brands,
        "brands_tags": brandsTags == null ? [] : List<dynamic>.from(brandsTags!.map((x) => x)),
        "categories": categories,
        "categories_hierarchy": categoriesHierarchy == null ? [] : List<dynamic>.from(categoriesHierarchy!.map((x) => x)),
        "categories_lc": categoriesLc,
        "categories_old": categoriesOld,
        "categories_properties": categoriesProperties?.toJson(),
        "categories_properties_tags": categoriesPropertiesTags == null ? [] : List<dynamic>.from(categoriesPropertiesTags!.map((x) => x)),
        "categories_tags": categoriesTags == null ? [] : List<dynamic>.from(categoriesTags!.map((x) => x)),
        "checkers_tags": checkersTags == null ? [] : List<dynamic>.from(checkersTags!.map((x) => x)),
        "code": code,
        "codes_tags": codesTags == null ? [] : List<dynamic>.from(codesTags!.map((x) => x)),
        "compared_to_category": comparedToCategory,
        "complete": complete,
        "completeness": completeness,
        "correctors_tags": correctorsTags == null ? [] : List<dynamic>.from(correctorsTags!.map((x) => x)),
        "countries": countries,
        "countries_hierarchy": countriesHierarchy == null ? [] : List<dynamic>.from(countriesHierarchy!.map((x) => x)),
        "countries_tags": countriesTags == null ? [] : List<dynamic>.from(countriesTags!.map((x) => x)),
        "created_t": createdT,
        "creator": creator,
        "data_quality_bugs_tags": dataQualityBugsTags == null ? [] : List<dynamic>.from(dataQualityBugsTags!.map((x) => x)),
        "data_quality_errors_tags": dataQualityErrorsTags == null ? [] : List<dynamic>.from(dataQualityErrorsTags!.map((x) => x)),
        "data_quality_info_tags": dataQualityInfoTags == null ? [] : List<dynamic>.from(dataQualityInfoTags!.map((x) => x)),
        "data_quality_tags": dataQualityTags == null ? [] : List<dynamic>.from(dataQualityTags!.map((x) => x)),
        "data_quality_warnings_tags": dataQualityWarningsTags == null ? [] : List<dynamic>.from(dataQualityWarningsTags!.map((x) => x)),
        "data_sources": dataSources,
        "data_sources_tags": dataSourcesTags == null ? [] : List<dynamic>.from(dataSourcesTags!.map((x) => x)),
        "ecoscore_data": ecoscoreData?.toJson(),
        "ecoscore_grade": ecoscoreGradeValues.reverse[ecoscoreGrade],
        "ecoscore_score": ecoscoreScore,
        "ecoscore_tags": ecoscoreTags == null ? [] : List<dynamic>.from(ecoscoreTags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "editors_tags": editorsTags == null ? [] : List<dynamic>.from(editorsTags!.map((x) => x)),
        "entry_dates_tags": entryDatesTags == null ? [] : List<dynamic>.from(entryDatesTags!.map((x) => x)),
        "food_groups": foodGroups,
        "food_groups_tags": foodGroupsTags == null ? [] : List<dynamic>.from(foodGroupsTags!.map((x) => x)),
        "id": productId,
        "image_front_small_url": imageFrontSmallUrl,
        "image_front_thumb_url": imageFrontThumbUrl,
        "image_front_url": imageFrontUrl,
        "image_ingredients_small_url": imageIngredientsSmallUrl,
        "image_ingredients_thumb_url": imageIngredientsThumbUrl,
        "image_ingredients_url": imageIngredientsUrl,
        "image_nutrition_small_url": imageNutritionSmallUrl,
        "image_nutrition_thumb_url": imageNutritionThumbUrl,
        "image_nutrition_url": imageNutritionUrl,
        "image_packaging_small_url": imagePackagingSmallUrl,
        "image_packaging_thumb_url": imagePackagingThumbUrl,
        "image_packaging_url": imagePackagingUrl,
        "image_small_url": imageSmallUrl,
        "image_thumb_url": imageThumbUrl,
        "image_url": imageUrl,
        "images": images?.toJson(),
        "informers_tags": informersTags == null ? [] : List<dynamic>.from(informersTags!.map((x) => x)),
        "ingredients": ingredients == null ? [] : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
        "ingredients_analysis": ingredientsAnalysis?.toJson(),
        "ingredients_analysis_tags": ingredientsAnalysisTags == null ? [] : List<dynamic>.from(ingredientsAnalysisTags!.map((x) => x)),
        "ingredients_from_or_that_may_be_from_palm_oil_n": ingredientsFromOrThatMayBeFromPalmOilN,
        "ingredients_from_palm_oil_n": ingredientsFromPalmOilN,
        "ingredients_from_palm_oil_tags": ingredientsFromPalmOilTags == null ? [] : List<dynamic>.from(ingredientsFromPalmOilTags!.map((x) => x)),
        "ingredients_hierarchy": ingredientsHierarchy == null ? [] : List<dynamic>.from(ingredientsHierarchy!.map((x) => x)),
        "ingredients_n": ingredientsN,
        "ingredients_n_tags": ingredientsNTags == null ? [] : List<dynamic>.from(ingredientsNTags!.map((x) => x)),
        "ingredients_original_tags": ingredientsOriginalTags == null ? [] : List<dynamic>.from(ingredientsOriginalTags!.map((x) => x)),
        "ingredients_percent_analysis": ingredientsPercentAnalysis,
        "ingredients_tags": ingredientsTags == null ? [] : List<dynamic>.from(ingredientsTags!.map((x) => x)),
        "ingredients_text": ingredientsText,
        "ingredients_text_en": ingredientsTextEn,
        "ingredients_text_with_allergens": ingredientsTextWithAllergens,
        "ingredients_text_with_allergens_en": ingredientsTextWithAllergensEn,
        "ingredients_that_may_be_from_palm_oil_n": ingredientsThatMayBeFromPalmOilN,
        "ingredients_that_may_be_from_palm_oil_tags": ingredientsThatMayBeFromPalmOilTags == null ? [] : List<dynamic>.from(ingredientsThatMayBeFromPalmOilTags!.map((x) => x)),
        "ingredients_with_specified_percent_n": ingredientsWithSpecifiedPercentN,
        "ingredients_with_specified_percent_sum": ingredientsWithSpecifiedPercentSum,
        "ingredients_with_unspecified_percent_n": ingredientsWithUnspecifiedPercentN,
        "ingredients_with_unspecified_percent_sum": ingredientsWithUnspecifiedPercentSum,
        "ingredients_without_ciqual_codes": ingredientsWithoutCiqualCodes == null ? [] : List<dynamic>.from(ingredientsWithoutCiqualCodes!.map((x) => x)),
        "ingredients_without_ciqual_codes_n": ingredientsWithoutCiqualCodesN,
        "interface_version_created": interfaceVersionCreated,
        "interface_version_modified": interfaceVersionModified,
        "known_ingredients_n": knownIngredientsN,
        "labels": labels,
        "labels_hierarchy": labelsHierarchy == null ? [] : List<dynamic>.from(labelsHierarchy!.map((x) => x)),
        "labels_lc": labelsLc,
        "labels_old": labelsOld,
        "labels_tags": labelsTags == null ? [] : List<dynamic>.from(labelsTags!.map((x) => x)),
        "lang": lang,
        "languages": languages?.toJson(),
        "languages_codes": languagesCodes?.toJson(),
        "languages_hierarchy": languagesHierarchy == null ? [] : List<dynamic>.from(languagesHierarchy!.map((x) => x)),
        "languages_tags": languagesTags == null ? [] : List<dynamic>.from(languagesTags!.map((x) => x)),
        "last_edit_dates_tags": lastEditDatesTags == null ? [] : List<dynamic>.from(lastEditDatesTags!.map((x) => x)),
        "last_editor": lastEditor,
        "last_image_dates_tags": lastImageDatesTags == null ? [] : List<dynamic>.from(lastImageDatesTags!.map((x) => x)),
        "last_image_t": lastImageT,
        "last_modified_by": lastModifiedBy,
        "last_modified_t": lastModifiedT,
        "last_updated_t": lastUpdatedT,
        "lc": lc,
        "main_countries_tags": mainCountriesTags == null ? [] : List<dynamic>.from(mainCountriesTags!.map((x) => x)),
        "max_imgid": maxImgid,
        "minerals_tags": mineralsTags == null ? [] : List<dynamic>.from(mineralsTags!.map((x) => x)),
        "misc_tags": miscTags == null ? [] : List<dynamic>.from(miscTags!.map((x) => x)),
        "no_nutrition_data": noNutritionData,
        "nova_group": novaGroup,
        "nova_group_debug": novaGroupDebug,
        "nova_groups": novaGroups,
        "nova_groups_markers": Map.from(novaGroupsMarkers!).map((k, v) => MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        "nova_groups_tags": novaGroupsTags == null ? [] : List<dynamic>.from(novaGroupsTags!.map((x) => x)),
        "nucleotides_tags": nucleotidesTags == null ? [] : List<dynamic>.from(nucleotidesTags!.map((x) => x)),
        "nutrient_levels": nutrientLevels?.toJson(),
        "nutrient_levels_tags": nutrientLevelsTags == null ? [] : List<dynamic>.from(nutrientLevelsTags!.map((x) => x)),
        "nutriments": nutriments?.toJson(),
        "nutriscore": Map.from(nutriscore!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "nutriscore_2021_tags": nutriscore2021Tags == null ? [] : List<dynamic>.from(nutriscore2021Tags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutriscore_2023_tags": nutriscore2023Tags == null ? [] : List<dynamic>.from(nutriscore2023Tags!.map((x) => x)),
        "nutriscore_data": nutriscoreData?.toJson(),
        "nutriscore_grade": ecoscoreGradeValues.reverse[nutriscoreGrade],
        "nutriscore_score": nutriscoreScore,
        "nutriscore_score_opposite": nutriscoreScoreOpposite,
        "nutriscore_tags": nutriscoreTags == null ? [] : List<dynamic>.from(nutriscoreTags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutriscore_version": nutriscoreVersion,
        "nutrition_data": nutritionData,
        "nutrition_data_per": nutritionDataPer,
        "nutrition_data_prepared_per": nutritionDataPreparedPer,
        "nutrition_grade_fr": ecoscoreGradeValues.reverse[nutritionGradeFr],
        "nutrition_grades": ecoscoreGradeValues.reverse[nutritionGrades],
        "nutrition_grades_tags": nutritionGradesTags == null ? [] : List<dynamic>.from(nutritionGradesTags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutrition_score_beverage": nutritionScoreBeverage,
        "nutrition_score_debug": nutritionScoreDebug,
        "nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients": nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients,
        "nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients_value": nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients": nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value": nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue,
        "nutrition_score_warning_no_fiber": nutritionScoreWarningNoFiber,
        "other_nutritional_substances_tags": otherNutritionalSubstancesTags == null ? [] : List<dynamic>.from(otherNutritionalSubstancesTags!.map((x) => x)),
        "packaging_materials_tags": packagingMaterialsTags == null ? [] : List<dynamic>.from(packagingMaterialsTags!.map((x) => x)),
        "packaging_recycling_tags": packagingRecyclingTags == null ? [] : List<dynamic>.from(packagingRecyclingTags!.map((x) => x)),
        "packaging_shapes_tags": packagingShapesTags == null ? [] : List<dynamic>.from(packagingShapesTags!.map((x) => x)),
        "packagings": packagings == null ? [] : List<dynamic>.from(packagings!.map((x) => x)),
        "packagings_materials": packagingsMaterials?.toJson(),
        "photographers_tags": photographersTags == null ? [] : List<dynamic>.from(photographersTags!.map((x) => x)),
        "pnns_groups_1": pnnsGroups1,
        "pnns_groups_1_tags": pnnsGroups1Tags == null ? [] : List<dynamic>.from(pnnsGroups1Tags!.map((x) => x)),
        "pnns_groups_2": pnnsGroups2,
        "pnns_groups_2_tags": pnnsGroups2Tags == null ? [] : List<dynamic>.from(pnnsGroups2Tags!.map((x) => x)),
        "popularity_key": popularityKey,
        "popularity_tags": popularityTags == null ? [] : List<dynamic>.from(popularityTags!.map((x) => x)),
        "product_name": productName,
        "product_name_en": productNameEn,
        "product_quantity": productQuantity,
        "quantity": quantity,
        "removed_countries_tags": removedCountriesTags == null ? [] : List<dynamic>.from(removedCountriesTags!.map((x) => x)),
        "rev": rev,
        "scans_n": scansN,
        "selected_images": selectedImages?.toJson(),
        "serving_quantity": servingQuantity,
        "serving_size": servingSize,
        "states": states,
        "states_hierarchy": statesHierarchy == null ? [] : List<dynamic>.from(statesHierarchy!.map((x) => x)),
        "states_tags": statesTags == null ? [] : List<dynamic>.from(statesTags!.map((x) => x)),
        "traces": traces,
        "traces_from_ingredients": tracesFromIngredients,
        "traces_from_user": tracesFromUser,
        "traces_hierarchy": tracesHierarchy == null ? [] : List<dynamic>.from(tracesHierarchy!.map((x) => x)),
        "traces_tags": tracesTags == null ? [] : List<dynamic>.from(tracesTags!.map((x) => x)),
        "unique_scans_n": uniqueScansN,
        "unknown_ingredients_n": unknownIngredientsN,
        "unknown_nutrients_tags": unknownNutrientsTags == null ? [] : List<dynamic>.from(unknownNutrientsTags!.map((x) => x)),
        "update_key": updateKey,
        "vitamins_tags": vitaminsTags == null ? [] : List<dynamic>.from(vitaminsTags!.map((x) => x)),
        "weighers_tags": weighersTags == null ? [] : List<dynamic>.from(weighersTags!.map((x) => x)),
    };
}

class CategoriesProperties {
    final String? agribalyseFoodCodeEn;
    final String? agribalyseProxyFoodCodeEn;
    final String? ciqualFoodCodeEn;

    CategoriesProperties({
        this.agribalyseFoodCodeEn,
        this.agribalyseProxyFoodCodeEn,
        this.ciqualFoodCodeEn,
    });

    factory CategoriesProperties.fromRawJson(String str) => CategoriesProperties.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CategoriesProperties.fromJson(Map<String, dynamic> json) => CategoriesProperties(
        agribalyseFoodCodeEn: json["agribalyse_food_code:en"],
        agribalyseProxyFoodCodeEn: json["agribalyse_proxy_food_code:en"],
        ciqualFoodCodeEn: json["ciqual_food_code:en"],
    );

    Map<String, dynamic> toJson() => {
        "agribalyse_food_code:en": agribalyseFoodCodeEn,
        "agribalyse_proxy_food_code:en": agribalyseProxyFoodCodeEn,
        "ciqual_food_code:en": ciqualFoodCodeEn,
    };
}

class EcoscoreData {
    final Adjustments? adjustments;
    final Agribalyse? agribalyse;
    final EcoscoreGrade? grade;
    final Map<String, EcoscoreGrade>? grades;
    final Missing? missing;
    final int? missingDataWarning;
    final int? missingKeyData;
    final PreviousData? previousData;
    final int? score;
    final Map<String, int>? scores;
    final String? status;

    EcoscoreData({
        this.adjustments,
        this.agribalyse,
        this.grade,
        this.grades,
        this.missing,
        this.missingDataWarning,
        this.missingKeyData,
        this.previousData,
        this.score,
        this.scores,
        this.status,
    });

    factory EcoscoreData.fromRawJson(String str) => EcoscoreData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory EcoscoreData.fromJson(Map<String, dynamic> json) => EcoscoreData(
        adjustments: json["adjustments"] == null ? null : Adjustments.fromJson(json["adjustments"]),
        agribalyse: json["agribalyse"] == null ? null : Agribalyse.fromJson(json["agribalyse"]),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        grades: Map.from(json["grades"]!).map((k, v) => MapEntry<String, EcoscoreGrade>(k, ecoscoreGradeValues.map[v]!)),
        missing: json["missing"] == null ? null : Missing.fromJson(json["missing"]),
        missingDataWarning: json["missing_data_warning"],
        missingKeyData: json["missing_key_data"],
        previousData: json["previous_data"] == null ? null : PreviousData.fromJson(json["previous_data"]),
        score: json["score"],
        scores: Map.from(json["scores"]!).map((k, v) => MapEntry<String, int>(k, v)),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "adjustments": adjustments?.toJson(),
        "agribalyse": agribalyse?.toJson(),
        "grade": ecoscoreGradeValues.reverse[grade],
        "grades": Map.from(grades!).map((k, v) => MapEntry<String, dynamic>(k, ecoscoreGradeValues.reverse[v])),
        "missing": missing?.toJson(),
        "missing_data_warning": missingDataWarning,
        "missing_key_data": missingKeyData,
        "previous_data": previousData?.toJson(),
        "score": score,
        "scores": Map.from(scores!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "status": status,
    };
}

class Adjustments {
    final OriginsOfIngredients? originsOfIngredients;
    final Packaging? packaging;
    final ProductionSystem? productionSystem;
    final ThreatenedSpecies? threatenedSpecies;

    Adjustments({
        this.originsOfIngredients,
        this.packaging,
        this.productionSystem,
        this.threatenedSpecies,
    });

    factory Adjustments.fromRawJson(String str) => Adjustments.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Adjustments.fromJson(Map<String, dynamic> json) => Adjustments(
        originsOfIngredients: json["origins_of_ingredients"] == null ? null : OriginsOfIngredients.fromJson(json["origins_of_ingredients"]),
        packaging: json["packaging"] == null ? null : Packaging.fromJson(json["packaging"]),
        productionSystem: json["production_system"] == null ? null : ProductionSystem.fromJson(json["production_system"]),
        threatenedSpecies: json["threatened_species"] == null ? null : ThreatenedSpecies.fromJson(json["threatened_species"]),
    );

    Map<String, dynamic> toJson() => {
        "origins_of_ingredients": originsOfIngredients?.toJson(),
        "packaging": packaging?.toJson(),
        "production_system": productionSystem?.toJson(),
        "threatened_species": threatenedSpecies?.toJson(),
    };
}

class OriginsOfIngredients {
    final List<AggregatedOrigin>? aggregatedOrigins;
    final int? epiScore;
    final int? epiValue;
    final List<String>? originsFromCategories;
    final List<String>? originsFromOriginsField;
    final int? transportationScore;
    final Map<String, int>? transportationScores;
    final int? transportationValue;
    final Map<String, int>? transportationValues;
    final int? value;
    final Map<String, int>? values;
    final String? warning;

    OriginsOfIngredients({
        this.aggregatedOrigins,
        this.epiScore,
        this.epiValue,
        this.originsFromCategories,
        this.originsFromOriginsField,
        this.transportationScore,
        this.transportationScores,
        this.transportationValue,
        this.transportationValues,
        this.value,
        this.values,
        this.warning,
    });

    factory OriginsOfIngredients.fromRawJson(String str) => OriginsOfIngredients.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory OriginsOfIngredients.fromJson(Map<String, dynamic> json) => OriginsOfIngredients(
        aggregatedOrigins: json["aggregated_origins"] == null ? [] : List<AggregatedOrigin>.from(json["aggregated_origins"]!.map((x) => AggregatedOrigin.fromJson(x))),
        epiScore: json["epi_score"],
        epiValue: json["epi_value"],
        originsFromCategories: json["origins_from_categories"] == null ? [] : List<String>.from(json["origins_from_categories"]!.map((x) => x)),
        originsFromOriginsField: json["origins_from_origins_field"] == null ? [] : List<String>.from(json["origins_from_origins_field"]!.map((x) => x)),
        transportationScore: json["transportation_score"],
        transportationScores: Map.from(json["transportation_scores"]!).map((k, v) => MapEntry<String, int>(k, v)),
        transportationValue: json["transportation_value"],
        transportationValues: Map.from(json["transportation_values"]!).map((k, v) => MapEntry<String, int>(k, v)),
        value: json["value"],
        values: Map.from(json["values"]!).map((k, v) => MapEntry<String, int>(k, v)),
        warning: json["warning"],
    );

    Map<String, dynamic> toJson() => {
        "aggregated_origins": aggregatedOrigins == null ? [] : List<dynamic>.from(aggregatedOrigins!.map((x) => x.toJson())),
        "epi_score": epiScore,
        "epi_value": epiValue,
        "origins_from_categories": originsFromCategories == null ? [] : List<dynamic>.from(originsFromCategories!.map((x) => x)),
        "origins_from_origins_field": originsFromOriginsField == null ? [] : List<dynamic>.from(originsFromOriginsField!.map((x) => x)),
        "transportation_score": transportationScore,
        "transportation_scores": Map.from(transportationScores!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "transportation_value": transportationValue,
        "transportation_values": Map.from(transportationValues!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "value": value,
        "values": Map.from(values!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "warning": warning,
    };
}

class AggregatedOrigin {
    final String? epiScore;
    final String? origin;
    final double? percent;
    final dynamic transportationScore;

    AggregatedOrigin({
        this.epiScore,
        this.origin,
        this.percent,
        this.transportationScore,
    });

    factory AggregatedOrigin.fromRawJson(String str) => AggregatedOrigin.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AggregatedOrigin.fromJson(Map<String, dynamic> json) => AggregatedOrigin(
        epiScore: json["epi_score"],
        origin: json["origin"],
        percent: json["percent"]?.toDouble(),
        transportationScore: json["transportation_score"],
    );

    Map<String, dynamic> toJson() => {
        "epi_score": epiScore,
        "origin": origin,
        "percent": percent,
        "transportation_score": transportationScore,
    };
}

class Packaging {
    final int? nonRecyclableAndNonBiodegradableMaterials;
    final int? value;
    final String? warning;

    Packaging({
        this.nonRecyclableAndNonBiodegradableMaterials,
        this.value,
        this.warning,
    });

    factory Packaging.fromRawJson(String str) => Packaging.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Packaging.fromJson(Map<String, dynamic> json) => Packaging(
        nonRecyclableAndNonBiodegradableMaterials: json["non_recyclable_and_non_biodegradable_materials"],
        value: json["value"],
        warning: json["warning"],
    );

    Map<String, dynamic> toJson() => {
        "non_recyclable_and_non_biodegradable_materials": nonRecyclableAndNonBiodegradableMaterials,
        "value": value,
        "warning": warning,
    };
}

class ProductionSystem {
    final List<dynamic>? labels;
    final int? value;
    final String? warning;

    ProductionSystem({
        this.labels,
        this.value,
        this.warning,
    });

    factory ProductionSystem.fromRawJson(String str) => ProductionSystem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductionSystem.fromJson(Map<String, dynamic> json) => ProductionSystem(
        labels: json["labels"] == null ? [] : List<dynamic>.from(json["labels"]!.map((x) => x)),
        value: json["value"],
        warning: json["warning"],
    );

    Map<String, dynamic> toJson() => {
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => x)),
        "value": value,
        "warning": warning,
    };
}

class ThreatenedSpecies {
    final String? ingredient;
    final int? value;

    ThreatenedSpecies({
        this.ingredient,
        this.value,
    });

    factory ThreatenedSpecies.fromRawJson(String str) => ThreatenedSpecies.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ThreatenedSpecies.fromJson(Map<String, dynamic> json) => ThreatenedSpecies(
        ingredient: json["ingredient"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "ingredient": ingredient,
        "value": value,
    };
}

class Agribalyse {
    final String? agribalyseFoodCode;
    final double? co2Agriculture;
    final int? co2Consumption;
    final double? co2Distribution;
    final double? co2Packaging;
    final double? co2Processing;
    final double? co2Total;
    final double? co2Transportation;
    final String? code;
    final String? dqr;
    final double? efAgriculture;
    final int? efConsumption;
    final double? efDistribution;
    final double? efPackaging;
    final double? efProcessing;
    final double? efTotal;
    final double? efTransportation;
    final int? isBeverage;
    final String? nameEn;
    final String? nameFr;
    final int? score;
    final String? version;
    final String? agribalyseProxyFoodCode;

    Agribalyse({
        this.agribalyseFoodCode,
        this.co2Agriculture,
        this.co2Consumption,
        this.co2Distribution,
        this.co2Packaging,
        this.co2Processing,
        this.co2Total,
        this.co2Transportation,
        this.code,
        this.dqr,
        this.efAgriculture,
        this.efConsumption,
        this.efDistribution,
        this.efPackaging,
        this.efProcessing,
        this.efTotal,
        this.efTransportation,
        this.isBeverage,
        this.nameEn,
        this.nameFr,
        this.score,
        this.version,
        this.agribalyseProxyFoodCode,
    });

    factory Agribalyse.fromRawJson(String str) => Agribalyse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Agribalyse.fromJson(Map<String, dynamic> json) => Agribalyse(
        agribalyseFoodCode: json["agribalyse_food_code"],
        co2Agriculture: json["co2_agriculture"]?.toDouble(),
        co2Consumption: json["co2_consumption"],
        co2Distribution: json["co2_distribution"]?.toDouble(),
        co2Packaging: json["co2_packaging"]?.toDouble(),
        co2Processing: json["co2_processing"]?.toDouble(),
        co2Total: json["co2_total"]?.toDouble(),
        co2Transportation: json["co2_transportation"]?.toDouble(),
        code: json["code"],
        dqr: json["dqr"],
        efAgriculture: json["ef_agriculture"]?.toDouble(),
        efConsumption: json["ef_consumption"],
        efDistribution: json["ef_distribution"]?.toDouble(),
        efPackaging: json["ef_packaging"]?.toDouble(),
        efProcessing: json["ef_processing"]?.toDouble(),
        efTotal: json["ef_total"]?.toDouble(),
        efTransportation: json["ef_transportation"]?.toDouble(),
        isBeverage: json["is_beverage"],
        nameEn: json["name_en"],
        nameFr: json["name_fr"],
        score: json["score"],
        version: json["version"],
        agribalyseProxyFoodCode: json["agribalyse_proxy_food_code"],
    );

    Map<String, dynamic> toJson() => {
        "agribalyse_food_code": agribalyseFoodCode,
        "co2_agriculture": co2Agriculture,
        "co2_consumption": co2Consumption,
        "co2_distribution": co2Distribution,
        "co2_packaging": co2Packaging,
        "co2_processing": co2Processing,
        "co2_total": co2Total,
        "co2_transportation": co2Transportation,
        "code": code,
        "dqr": dqr,
        "ef_agriculture": efAgriculture,
        "ef_consumption": efConsumption,
        "ef_distribution": efDistribution,
        "ef_packaging": efPackaging,
        "ef_processing": efProcessing,
        "ef_total": efTotal,
        "ef_transportation": efTransportation,
        "is_beverage": isBeverage,
        "name_en": nameEn,
        "name_fr": nameFr,
        "score": score,
        "version": version,
        "agribalyse_proxy_food_code": agribalyseProxyFoodCode,
    };
}

enum EcoscoreGrade {
    D
}

final ecoscoreGradeValues = EnumValues({
    "d": EcoscoreGrade.D
});

class Missing {
    final int? labels;
    final int? origins;
    final int? packagings;

    Missing({
        this.labels,
        this.origins,
        this.packagings,
    });

    factory Missing.fromRawJson(String str) => Missing.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Missing.fromJson(Map<String, dynamic> json) => Missing(
        labels: json["labels"],
        origins: json["origins"],
        packagings: json["packagings"],
    );

    Map<String, dynamic> toJson() => {
        "labels": labels,
        "origins": origins,
        "packagings": packagings,
    };
}

class PreviousData {
    final Agribalyse? agribalyse;
    final String? grade;
    final int? score;

    PreviousData({
        this.agribalyse,
        this.grade,
        this.score,
    });

    factory PreviousData.fromRawJson(String str) => PreviousData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PreviousData.fromJson(Map<String, dynamic> json) => PreviousData(
        agribalyse: json["agribalyse"] == null ? null : Agribalyse.fromJson(json["agribalyse"]),
        grade: json["grade"],
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "agribalyse": agribalyse?.toJson(),
        "grade": grade,
        "score": score,
    };
}

class Images {
    final The1? the1;
    final The1? the2;
    final The1? the3;
    final The1? the4;
    final The1? the5;
    final The1? the6;
    final The1? the7;
    final The1? the8;
    final En? frontEn;
    final En? ingredientsEn;
    final En? nutritionEn;
    final En? packagingEn;

    Images({
        this.the1,
        this.the2,
        this.the3,
        this.the4,
        this.the5,
        this.the6,
        this.the7,
        this.the8,
        this.frontEn,
        this.ingredientsEn,
        this.nutritionEn,
        this.packagingEn,
    });

    factory Images.fromRawJson(String str) => Images.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        the1: json["1"] == null ? null : The1.fromJson(json["1"]),
        the2: json["2"] == null ? null : The1.fromJson(json["2"]),
        the3: json["3"] == null ? null : The1.fromJson(json["3"]),
        the4: json["4"] == null ? null : The1.fromJson(json["4"]),
        the5: json["5"] == null ? null : The1.fromJson(json["5"]),
        the6: json["6"] == null ? null : The1.fromJson(json["6"]),
        the7: json["7"] == null ? null : The1.fromJson(json["7"]),
        the8: json["8"] == null ? null : The1.fromJson(json["8"]),
        frontEn: json["front_en"] == null ? null : En.fromJson(json["front_en"]),
        ingredientsEn: json["ingredients_en"] == null ? null : En.fromJson(json["ingredients_en"]),
        nutritionEn: json["nutrition_en"] == null ? null : En.fromJson(json["nutrition_en"]),
        packagingEn: json["packaging_en"] == null ? null : En.fromJson(json["packaging_en"]),
    );

    Map<String, dynamic> toJson() => {
        "1": the1?.toJson(),
        "2": the2?.toJson(),
        "3": the3?.toJson(),
        "4": the4?.toJson(),
        "5": the5?.toJson(),
        "6": the6?.toJson(),
        "7": the7?.toJson(),
        "8": the8?.toJson(),
        "front_en": frontEn?.toJson(),
        "ingredients_en": ingredientsEn?.toJson(),
        "nutrition_en": nutritionEn?.toJson(),
        "packaging_en": packagingEn?.toJson(),
    };
}

class En {
    final int? angle;
    final String? coordinatesImageSize;
    final String? geometry;
    final String? imgid;
    final dynamic normalize;
    final String? rev;
    final Sizes? sizes;
    final dynamic whiteMagic;
    final String? x1;
    final String? x2;
    final String? y1;
    final String? y2;

    En({
        this.angle,
        this.coordinatesImageSize,
        this.geometry,
        this.imgid,
        this.normalize,
        this.rev,
        this.sizes,
        this.whiteMagic,
        this.x1,
        this.x2,
        this.y1,
        this.y2,
    });

    factory En.fromRawJson(String str) => En.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory En.fromJson(Map<String, dynamic> json) => En(
        angle: json["angle"],
        coordinatesImageSize: json["coordinates_image_size"],
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
    );

    Map<String, dynamic> toJson() => {
        "angle": angle,
        "coordinates_image_size": coordinatesImageSize,
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
    };
}

class Sizes {
    final The100? the100;
    final The100? the400;
    final The100? full;
    final The100? the200;

    Sizes({
        this.the100,
        this.the400,
        this.full,
        this.the200,
    });

    factory Sizes.fromRawJson(String str) => Sizes.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
        the100: json["100"] == null ? null : The100.fromJson(json["100"]),
        the400: json["400"] == null ? null : The100.fromJson(json["400"]),
        full: json["full"] == null ? null : The100.fromJson(json["full"]),
        the200: json["200"] == null ? null : The100.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "100": the100?.toJson(),
        "400": the400?.toJson(),
        "full": full?.toJson(),
        "200": the200?.toJson(),
    };
}

class The100 {
    final int? h;
    final int? w;

    The100({
        this.h,
        this.w,
    });

    factory The100.fromRawJson(String str) => The100.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory The100.fromJson(Map<String, dynamic> json) => The100(
        h: json["h"],
        w: json["w"],
    );

    Map<String, dynamic> toJson() => {
        "h": h,
        "w": w,
    };
}

class The1 {
    final Sizes? sizes;
    final int? uploadedT;
    final String? uploader;

    The1({
        this.sizes,
        this.uploadedT,
        this.uploader,
    });

    factory The1.fromRawJson(String str) => The1.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory The1.fromJson(Map<String, dynamic> json) => The1(
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        uploadedT: json["uploaded_t"],
        uploader: json["uploader"],
    );

    Map<String, dynamic> toJson() => {
        "sizes": sizes?.toJson(),
        "uploaded_t": uploadedT,
        "uploader": uploader,
    };
}

class ProductIngredient {
    final String? ciqualProxyFoodCode;
    final String? id;
    final List<PurpleIngredient>? ingredients;
    final double? percentEstimate;
    final double? percentMax;
    final double? percentMin;
    final String? text;
    final String? vegan;
    final String? vegetarian;
    final String? ciqualFoodCode;
    final String? fromPalmOil;

    ProductIngredient({
        this.ciqualProxyFoodCode,
        this.id,
        this.ingredients,
        this.percentEstimate,
        this.percentMax,
        this.percentMin,
        this.text,
        this.vegan,
        this.vegetarian,
        this.ciqualFoodCode,
        this.fromPalmOil,
    });

    factory ProductIngredient.fromRawJson(String str) => ProductIngredient.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductIngredient.fromJson(Map<String, dynamic> json) => ProductIngredient(
        ciqualProxyFoodCode: json["ciqual_proxy_food_code"],
        id: json["id"],
        ingredients: json["ingredients"] == null ? [] : List<PurpleIngredient>.from(json["ingredients"]!.map((x) => PurpleIngredient.fromJson(x))),
        percentEstimate: json["percent_estimate"]?.toDouble(),
        percentMax: json["percent_max"]?.toDouble(),
        percentMin: json["percent_min"]?.toDouble(),
        text: json["text"],
        vegan: json["vegan"],
        vegetarian: json["vegetarian"],
        ciqualFoodCode: json["ciqual_food_code"],
        fromPalmOil: json["from_palm_oil"],
    );

    Map<String, dynamic> toJson() => {
        "ciqual_proxy_food_code": ciqualProxyFoodCode,
        "id": id,
        "ingredients": ingredients == null ? [] : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
        "percent_estimate": percentEstimate,
        "percent_max": percentMax,
        "percent_min": percentMin,
        "text": text,
        "vegan": vegan,
        "vegetarian": vegetarian,
        "ciqual_food_code": ciqualFoodCode,
        "from_palm_oil": fromPalmOil,
    };
}

class PurpleIngredient {
    final String? ciqualProxyFoodCode;
    final String? id;
    final double? percentEstimate;
    final double? percentMax;
    final double? percentMin;
    final String? text;
    final String? vegan;
    final String? vegetarian;
    final List<FluffyIngredient>? ingredients;
    final String? origins;

    PurpleIngredient({
        this.ciqualProxyFoodCode,
        this.id,
        this.percentEstimate,
        this.percentMax,
        this.percentMin,
        this.text,
        this.vegan,
        this.vegetarian,
        this.ingredients,
        this.origins,
    });

    factory PurpleIngredient.fromRawJson(String str) => PurpleIngredient.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PurpleIngredient.fromJson(Map<String, dynamic> json) => PurpleIngredient(
        ciqualProxyFoodCode: json["ciqual_proxy_food_code"],
        id: json["id"],
        percentEstimate: json["percent_estimate"]?.toDouble(),
        percentMax: json["percent_max"]?.toDouble(),
        percentMin: json["percent_min"]?.toDouble(),
        text: json["text"],
        vegan: json["vegan"],
        vegetarian: json["vegetarian"],
        ingredients: json["ingredients"] == null ? [] : List<FluffyIngredient>.from(json["ingredients"]!.map((x) => FluffyIngredient.fromJson(x))),
        origins: json["origins"],
    );

    Map<String, dynamic> toJson() => {
        "ciqual_proxy_food_code": ciqualProxyFoodCode,
        "id": id,
        "percent_estimate": percentEstimate,
        "percent_max": percentMax,
        "percent_min": percentMin,
        "text": text,
        "vegan": vegan,
        "vegetarian": vegetarian,
        "ingredients": ingredients == null ? [] : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
        "origins": origins,
    };
}

class FluffyIngredient {
    final String? id;
    final double? percentEstimate;
    final double? percentMax;
    final int? percentMin;
    final String? text;

    FluffyIngredient({
        this.id,
        this.percentEstimate,
        this.percentMax,
        this.percentMin,
        this.text,
    });

    factory FluffyIngredient.fromRawJson(String str) => FluffyIngredient.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FluffyIngredient.fromJson(Map<String, dynamic> json) => FluffyIngredient(
        id: json["id"],
        percentEstimate: json["percent_estimate"]?.toDouble(),
        percentMax: json["percent_max"]?.toDouble(),
        percentMin: json["percent_min"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "percent_estimate": percentEstimate,
        "percent_max": percentMax,
        "percent_min": percentMin,
        "text": text,
    };
}

class IngredientsAnalysis {
    final List<String>? enNonVegan;
    final List<String>? enPalmOil;
    final List<String>? enVeganStatusUnknown;
    final List<String>? enVegetarianStatusUnknown;

    IngredientsAnalysis({
        this.enNonVegan,
        this.enPalmOil,
        this.enVeganStatusUnknown,
        this.enVegetarianStatusUnknown,
    });

    factory IngredientsAnalysis.fromRawJson(String str) => IngredientsAnalysis.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory IngredientsAnalysis.fromJson(Map<String, dynamic> json) => IngredientsAnalysis(
        enNonVegan: json["en:non-vegan"] == null ? [] : List<String>.from(json["en:non-vegan"]!.map((x) => x)),
        enPalmOil: json["en:palm-oil"] == null ? [] : List<String>.from(json["en:palm-oil"]!.map((x) => x)),
        enVeganStatusUnknown: json["en:vegan-status-unknown"] == null ? [] : List<String>.from(json["en:vegan-status-unknown"]!.map((x) => x)),
        enVegetarianStatusUnknown: json["en:vegetarian-status-unknown"] == null ? [] : List<String>.from(json["en:vegetarian-status-unknown"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "en:non-vegan": enNonVegan == null ? [] : List<dynamic>.from(enNonVegan!.map((x) => x)),
        "en:palm-oil": enPalmOil == null ? [] : List<dynamic>.from(enPalmOil!.map((x) => x)),
        "en:vegan-status-unknown": enVeganStatusUnknown == null ? [] : List<dynamic>.from(enVeganStatusUnknown!.map((x) => x)),
        "en:vegetarian-status-unknown": enVegetarianStatusUnknown == null ? [] : List<dynamic>.from(enVegetarianStatusUnknown!.map((x) => x)),
    };
}

class Languages {
    final int? enEnglish;

    Languages({
        this.enEnglish,
    });

    factory Languages.fromRawJson(String str) => Languages.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        enEnglish: json["en:english"],
    );

    Map<String, dynamic> toJson() => {
        "en:english": enEnglish,
    };
}

class LanguagesCodes {
    final int? en;

    LanguagesCodes({
        this.en,
    });

    factory LanguagesCodes.fromRawJson(String str) => LanguagesCodes.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LanguagesCodes.fromJson(Map<String, dynamic> json) => LanguagesCodes(
        en: json["en"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
    };
}

class NutrientLevels {
    final String? fat;
    final String? salt;
    final String? saturatedFat;
    final String? sugars;

    NutrientLevels({
        this.fat,
        this.salt,
        this.saturatedFat,
        this.sugars,
    });

    factory NutrientLevels.fromRawJson(String str) => NutrientLevels.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NutrientLevels.fromJson(Map<String, dynamic> json) => NutrientLevels(
        fat: json["fat"],
        salt: json["salt"],
        saturatedFat: json["saturated-fat"],
        sugars: json["sugars"],
    );

    Map<String, dynamic> toJson() => {
        "fat": fat,
        "salt": salt,
        "saturated-fat": saturatedFat,
        "sugars": sugars,
    };
}

class Nutriments {
    final double? carbohydrates;
    final double? carbohydrates100G;
    final double? carbohydratesServing;
    final String? carbohydratesUnit;
    final double? carbohydratesValue;
    final int? cholesterol;
    final int? cholesterol100G;
    final int? cholesterolServing;
    final String? cholesterolUnit;
    final int? cholesterolValue;
    final int? energy;
    final int? energyKcal;
    final int? energyKcal100G;
    final double? energyKcalServing;
    final String? energyKcalUnit;
    final int? energyKcalValue;
    final double? energyKcalValueComputed;
    final int? energy100G;
    final int? energyServing;
    final String? energyUnit;
    final int? energyValue;
    final int? fat;
    final int? fat100G;
    final double? fatServing;
    final String? fatUnit;
    final int? fatValue;
    final int? fruitsVegetablesLegumesEstimateFromIngredients100G;
    final int? fruitsVegetablesLegumesEstimateFromIngredientsServing;
    final int? fruitsVegetablesNutsEstimateFromIngredients100G;
    final int? fruitsVegetablesNutsEstimateFromIngredientsServing;
    final int? novaGroup;
    final int? novaGroup100G;
    final int? novaGroupServing;
    final int? nutritionScoreFr;
    final int? nutritionScoreFr100G;
    final double? proteins;
    final double? proteins100G;
    final double? proteinsServing;
    final String? proteinsUnit;
    final double? proteinsValue;
    final double? salt;
    final double? salt100G;
    final double? saltServing;
    final String? saltUnit;
    final double? saltValue;
    final int? saturatedFat;
    final int? saturatedFat100G;
    final double? saturatedFatServing;
    final String? saturatedFatUnit;
    final int? saturatedFatValue;
    final double? sodium;
    final double? sodium100G;
    final double? sodiumServing;
    final String? sodiumUnit;
    final double? sodiumValue;
    final double? sugars;
    final double? sugars100G;
    final double? sugarsServing;
    final String? sugarsUnit;
    final double? sugarsValue;
    final int? transFat;
    final int? transFat100G;
    final int? transFatServing;
    final String? transFatUnit;
    final int? transFatValue;

    Nutriments({
        this.carbohydrates,
        this.carbohydrates100G,
        this.carbohydratesServing,
        this.carbohydratesUnit,
        this.carbohydratesValue,
        this.cholesterol,
        this.cholesterol100G,
        this.cholesterolServing,
        this.cholesterolUnit,
        this.cholesterolValue,
        this.energy,
        this.energyKcal,
        this.energyKcal100G,
        this.energyKcalServing,
        this.energyKcalUnit,
        this.energyKcalValue,
        this.energyKcalValueComputed,
        this.energy100G,
        this.energyServing,
        this.energyUnit,
        this.energyValue,
        this.fat,
        this.fat100G,
        this.fatServing,
        this.fatUnit,
        this.fatValue,
        this.fruitsVegetablesLegumesEstimateFromIngredients100G,
        this.fruitsVegetablesLegumesEstimateFromIngredientsServing,
        this.fruitsVegetablesNutsEstimateFromIngredients100G,
        this.fruitsVegetablesNutsEstimateFromIngredientsServing,
        this.novaGroup,
        this.novaGroup100G,
        this.novaGroupServing,
        this.nutritionScoreFr,
        this.nutritionScoreFr100G,
        this.proteins,
        this.proteins100G,
        this.proteinsServing,
        this.proteinsUnit,
        this.proteinsValue,
        this.salt,
        this.salt100G,
        this.saltServing,
        this.saltUnit,
        this.saltValue,
        this.saturatedFat,
        this.saturatedFat100G,
        this.saturatedFatServing,
        this.saturatedFatUnit,
        this.saturatedFatValue,
        this.sodium,
        this.sodium100G,
        this.sodiumServing,
        this.sodiumUnit,
        this.sodiumValue,
        this.sugars,
        this.sugars100G,
        this.sugarsServing,
        this.sugarsUnit,
        this.sugarsValue,
        this.transFat,
        this.transFat100G,
        this.transFatServing,
        this.transFatUnit,
        this.transFatValue,
    });

    factory Nutriments.fromRawJson(String str) => Nutriments.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Nutriments.fromJson(Map<String, dynamic> json) => Nutriments(
        carbohydrates: json["carbohydrates"]?.toDouble(),
        carbohydrates100G: json["carbohydrates_100g"]?.toDouble(),
        carbohydratesServing: json["carbohydrates_serving"]?.toDouble(),
        carbohydratesUnit: json["carbohydrates_unit"],
        carbohydratesValue: json["carbohydrates_value"]?.toDouble(),
        cholesterol: json["cholesterol"],
        cholesterol100G: json["cholesterol_100g"],
        cholesterolServing: json["cholesterol_serving"],
        cholesterolUnit: json["cholesterol_unit"],
        cholesterolValue: json["cholesterol_value"],
        energy: json["energy"],
        energyKcal: json["energy-kcal"],
        energyKcal100G: json["energy-kcal_100g"],
        energyKcalServing: json["energy-kcal_serving"]?.toDouble(),
        energyKcalUnit: json["energy-kcal_unit"],
        energyKcalValue: json["energy-kcal_value"],
        energyKcalValueComputed: json["energy-kcal_value_computed"]?.toDouble(),
        energy100G: json["energy_100g"],
        energyServing: json["energy_serving"],
        energyUnit: json["energy_unit"],
        energyValue: json["energy_value"],
        fat: json["fat"],
        fat100G: json["fat_100g"],
        fatServing: json["fat_serving"]?.toDouble(),
        fatUnit: json["fat_unit"],
        fatValue: json["fat_value"],
        fruitsVegetablesLegumesEstimateFromIngredients100G: json["fruits-vegetables-legumes-estimate-from-ingredients_100g"],
        fruitsVegetablesLegumesEstimateFromIngredientsServing: json["fruits-vegetables-legumes-estimate-from-ingredients_serving"],
        fruitsVegetablesNutsEstimateFromIngredients100G: json["fruits-vegetables-nuts-estimate-from-ingredients_100g"],
        fruitsVegetablesNutsEstimateFromIngredientsServing: json["fruits-vegetables-nuts-estimate-from-ingredients_serving"],
        novaGroup: json["nova-group"],
        novaGroup100G: json["nova-group_100g"],
        novaGroupServing: json["nova-group_serving"],
        nutritionScoreFr: json["nutrition-score-fr"],
        nutritionScoreFr100G: json["nutrition-score-fr_100g"],
        proteins: json["proteins"]?.toDouble(),
        proteins100G: json["proteins_100g"]?.toDouble(),
        proteinsServing: json["proteins_serving"]?.toDouble(),
        proteinsUnit: json["proteins_unit"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        salt: json["salt"]?.toDouble(),
        salt100G: json["salt_100g"]?.toDouble(),
        saltServing: json["salt_serving"]?.toDouble(),
        saltUnit: json["salt_unit"],
        saltValue: json["salt_value"]?.toDouble(),
        saturatedFat: json["saturated-fat"],
        saturatedFat100G: json["saturated-fat_100g"],
        saturatedFatServing: json["saturated-fat_serving"]?.toDouble(),
        saturatedFatUnit: json["saturated-fat_unit"],
        saturatedFatValue: json["saturated-fat_value"],
        sodium: json["sodium"]?.toDouble(),
        sodium100G: json["sodium_100g"]?.toDouble(),
        sodiumServing: json["sodium_serving"]?.toDouble(),
        sodiumUnit: json["sodium_unit"],
        sodiumValue: json["sodium_value"]?.toDouble(),
        sugars: json["sugars"]?.toDouble(),
        sugars100G: json["sugars_100g"]?.toDouble(),
        sugarsServing: json["sugars_serving"]?.toDouble(),
        sugarsUnit: json["sugars_unit"],
        sugarsValue: json["sugars_value"]?.toDouble(),
        transFat: json["trans-fat"],
        transFat100G: json["trans-fat_100g"],
        transFatServing: json["trans-fat_serving"],
        transFatUnit: json["trans-fat_unit"],
        transFatValue: json["trans-fat_value"],
    );

    Map<String, dynamic> toJson() => {
        "carbohydrates": carbohydrates,
        "carbohydrates_100g": carbohydrates100G,
        "carbohydrates_serving": carbohydratesServing,
        "carbohydrates_unit": carbohydratesUnit,
        "carbohydrates_value": carbohydratesValue,
        "cholesterol": cholesterol,
        "cholesterol_100g": cholesterol100G,
        "cholesterol_serving": cholesterolServing,
        "cholesterol_unit": cholesterolUnit,
        "cholesterol_value": cholesterolValue,
        "energy": energy,
        "energy-kcal": energyKcal,
        "energy-kcal_100g": energyKcal100G,
        "energy-kcal_serving": energyKcalServing,
        "energy-kcal_unit": energyKcalUnit,
        "energy-kcal_value": energyKcalValue,
        "energy-kcal_value_computed": energyKcalValueComputed,
        "energy_100g": energy100G,
        "energy_serving": energyServing,
        "energy_unit": energyUnit,
        "energy_value": energyValue,
        "fat": fat,
        "fat_100g": fat100G,
        "fat_serving": fatServing,
        "fat_unit": fatUnit,
        "fat_value": fatValue,
        "fruits-vegetables-legumes-estimate-from-ingredients_100g": fruitsVegetablesLegumesEstimateFromIngredients100G,
        "fruits-vegetables-legumes-estimate-from-ingredients_serving": fruitsVegetablesLegumesEstimateFromIngredientsServing,
        "fruits-vegetables-nuts-estimate-from-ingredients_100g": fruitsVegetablesNutsEstimateFromIngredients100G,
        "fruits-vegetables-nuts-estimate-from-ingredients_serving": fruitsVegetablesNutsEstimateFromIngredientsServing,
        "nova-group": novaGroup,
        "nova-group_100g": novaGroup100G,
        "nova-group_serving": novaGroupServing,
        "nutrition-score-fr": nutritionScoreFr,
        "nutrition-score-fr_100g": nutritionScoreFr100G,
        "proteins": proteins,
        "proteins_100g": proteins100G,
        "proteins_serving": proteinsServing,
        "proteins_unit": proteinsUnit,
        "proteins_value": proteinsValue,
        "salt": salt,
        "salt_100g": salt100G,
        "salt_serving": saltServing,
        "salt_unit": saltUnit,
        "salt_value": saltValue,
        "saturated-fat": saturatedFat,
        "saturated-fat_100g": saturatedFat100G,
        "saturated-fat_serving": saturatedFatServing,
        "saturated-fat_unit": saturatedFatUnit,
        "saturated-fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_100g": sodium100G,
        "sodium_serving": sodiumServing,
        "sodium_unit": sodiumUnit,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_100g": sugars100G,
        "sugars_serving": sugarsServing,
        "sugars_unit": sugarsUnit,
        "sugars_value": sugarsValue,
        "trans-fat": transFat,
        "trans-fat_100g": transFat100G,
        "trans-fat_serving": transFatServing,
        "trans-fat_unit": transFatUnit,
        "trans-fat_value": transFatValue,
    };
}

class Nutriscore {
    final int? categoryAvailable;
    final Data? data;
    final String? grade;
    final int? nutrientsAvailable;
    final int? nutriscoreApplicable;
    final int? nutriscoreComputed;
    final int? score;

    Nutriscore({
        this.categoryAvailable,
        this.data,
        this.grade,
        this.nutrientsAvailable,
        this.nutriscoreApplicable,
        this.nutriscoreComputed,
        this.score,
    });

    factory Nutriscore.fromRawJson(String str) => Nutriscore.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Nutriscore.fromJson(Map<String, dynamic> json) => Nutriscore(
        categoryAvailable: json["category_available"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        grade: json["grade"],
        nutrientsAvailable: json["nutrients_available"],
        nutriscoreApplicable: json["nutriscore_applicable"],
        nutriscoreComputed: json["nutriscore_computed"],
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "category_available": categoryAvailable,
        "data": data?.toJson(),
        "grade": grade,
        "nutrients_available": nutrientsAvailable,
        "nutriscore_applicable": nutriscoreApplicable,
        "nutriscore_computed": nutriscoreComputed,
        "score": score,
    };
}

class Data {
    final int? energy;
    final int? energyPoints;
    final int? energyValue;
    final int? fiber;
    final int? fiberPoints;
    final int? fiberValue;
    final int? fruitsVegetablesNutsColzaWalnutOliveOils;
    final int? fruitsVegetablesNutsColzaWalnutOliveOilsPoints;
    final int? fruitsVegetablesNutsColzaWalnutOliveOilsValue;
    final int? isBeverage;
    final int? isCheese;
    final int? isFat;
    final int? isWater;
    final int? negativePoints;
    final int? positivePoints;
    final double? proteins;
    final int? proteinsPoints;
    final double? proteinsValue;
    final int? saturatedFat;
    final int? saturatedFatPoints;
    final int? saturatedFatValue;
    final int? sodium;
    final int? sodiumPoints;
    final int? sodiumValue;
    final double? sugars;
    final int? sugarsPoints;
    final double? sugarsValue;
    final EcoscoreGrade? grade;
    final int? score;
    final Components? components;
    final int? countProteins;
    final String? countProteinsReason;
    final int? isFatOilNutsSeeds;
    final int? isRedMeatProduct;
    final int? negativePointsMax;
    final List<String>? positiveNutrients;
    final int? positivePointsMax;

    Data({
        this.energy,
        this.energyPoints,
        this.energyValue,
        this.fiber,
        this.fiberPoints,
        this.fiberValue,
        this.fruitsVegetablesNutsColzaWalnutOliveOils,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        this.isBeverage,
        this.isCheese,
        this.isFat,
        this.isWater,
        this.negativePoints,
        this.positivePoints,
        this.proteins,
        this.proteinsPoints,
        this.proteinsValue,
        this.saturatedFat,
        this.saturatedFatPoints,
        this.saturatedFatValue,
        this.sodium,
        this.sodiumPoints,
        this.sodiumValue,
        this.sugars,
        this.sugarsPoints,
        this.sugarsValue,
        this.grade,
        this.score,
        this.components,
        this.countProteins,
        this.countProteinsReason,
        this.isFatOilNutsSeeds,
        this.isRedMeatProduct,
        this.negativePointsMax,
        this.positiveNutrients,
        this.positivePointsMax,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        energy: json["energy"],
        energyPoints: json["energy_points"],
        energyValue: json["energy_value"],
        fiber: json["fiber"],
        fiberPoints: json["fiber_points"],
        fiberValue: json["fiber_value"],
        fruitsVegetablesNutsColzaWalnutOliveOils: json["fruits_vegetables_nuts_colza_walnut_olive_oils"],
        fruitsVegetablesNutsColzaWalnutOliveOilsPoints: json["fruits_vegetables_nuts_colza_walnut_olive_oils_points"],
        fruitsVegetablesNutsColzaWalnutOliveOilsValue: json["fruits_vegetables_nuts_colza_walnut_olive_oils_value"],
        isBeverage: json["is_beverage"],
        isCheese: json["is_cheese"],
        isFat: json["is_fat"],
        isWater: json["is_water"],
        negativePoints: json["negative_points"],
        positivePoints: json["positive_points"],
        proteins: json["proteins"]?.toDouble(),
        proteinsPoints: json["proteins_points"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        saturatedFat: json["saturated_fat"],
        saturatedFatPoints: json["saturated_fat_points"],
        saturatedFatValue: json["saturated_fat_value"],
        sodium: json["sodium"],
        sodiumPoints: json["sodium_points"],
        sodiumValue: json["sodium_value"],
        sugars: json["sugars"]?.toDouble(),
        sugarsPoints: json["sugars_points"],
        sugarsValue: json["sugars_value"]?.toDouble(),
        grade: ecoscoreGradeValues.map[json["grade"]],
        score: json["score"],
        components: json["components"] == null ? null : Components.fromJson(json["components"]),
        countProteins: json["count_proteins"],
        countProteinsReason: json["count_proteins_reason"],
        isFatOilNutsSeeds: json["is_fat_oil_nuts_seeds"],
        isRedMeatProduct: json["is_red_meat_product"],
        negativePointsMax: json["negative_points_max"],
        positiveNutrients: json["positive_nutrients"] == null ? [] : List<String>.from(json["positive_nutrients"]!.map((x) => x)),
        positivePointsMax: json["positive_points_max"],
    );

    Map<String, dynamic> toJson() => {
        "energy": energy,
        "energy_points": energyPoints,
        "energy_value": energyValue,
        "fiber": fiber,
        "fiber_points": fiberPoints,
        "fiber_value": fiberValue,
        "fruits_vegetables_nuts_colza_walnut_olive_oils": fruitsVegetablesNutsColzaWalnutOliveOils,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_points": fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_value": fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        "is_beverage": isBeverage,
        "is_cheese": isCheese,
        "is_fat": isFat,
        "is_water": isWater,
        "negative_points": negativePoints,
        "positive_points": positivePoints,
        "proteins": proteins,
        "proteins_points": proteinsPoints,
        "proteins_value": proteinsValue,
        "saturated_fat": saturatedFat,
        "saturated_fat_points": saturatedFatPoints,
        "saturated_fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_points": sodiumPoints,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_points": sugarsPoints,
        "sugars_value": sugarsValue,
        "grade": ecoscoreGradeValues.reverse[grade],
        "score": score,
        "components": components?.toJson(),
        "count_proteins": countProteins,
        "count_proteins_reason": countProteinsReason,
        "is_fat_oil_nuts_seeds": isFatOilNutsSeeds,
        "is_red_meat_product": isRedMeatProduct,
        "negative_points_max": negativePointsMax,
        "positive_nutrients": positiveNutrients == null ? [] : List<dynamic>.from(positiveNutrients!.map((x) => x)),
        "positive_points_max": positivePointsMax,
    };
}

class Components {
    final List<Tive>? negative;
    final List<Tive>? positive;

    Components({
        this.negative,
        this.positive,
    });

    factory Components.fromRawJson(String str) => Components.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Components.fromJson(Map<String, dynamic> json) => Components(
        negative: json["negative"] == null ? [] : List<Tive>.from(json["negative"]!.map((x) => Tive.fromJson(x))),
        positive: json["positive"] == null ? [] : List<Tive>.from(json["positive"]!.map((x) => Tive.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "negative": negative == null ? [] : List<dynamic>.from(negative!.map((x) => x.toJson())),
        "positive": positive == null ? [] : List<dynamic>.from(positive!.map((x) => x.toJson())),
    };
}

class Tive {
    final String? id;
    final int? points;
    final int? pointsMax;
    final String? unit;
    final double? value;

    Tive({
        this.id,
        this.points,
        this.pointsMax,
        this.unit,
        this.value,
    });

    factory Tive.fromRawJson(String str) => Tive.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Tive.fromJson(Map<String, dynamic> json) => Tive(
        id: json["id"],
        points: json["points"],
        pointsMax: json["points_max"],
        unit: json["unit"],
        value: json["value"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "points": points,
        "points_max": pointsMax,
        "unit": unit,
        "value": value,
    };
}

class NutriscoreData {
    final int? energy;
    final int? energyPoints;
    final int? energyValue;
    final int? fiber;
    final int? fiberPoints;
    final int? fiberValue;
    final int? fruitsVegetablesNutsColzaWalnutOliveOils;
    final int? fruitsVegetablesNutsColzaWalnutOliveOilsPoints;
    final int? fruitsVegetablesNutsColzaWalnutOliveOilsValue;
    final int? isBeverage;
    final int? isCheese;
    final int? isFat;
    final int? isWater;
    final int? negativePoints;
    final int? positivePoints;
    final double? proteins;
    final int? proteinsPoints;
    final double? proteinsValue;
    final int? saturatedFat;
    final int? saturatedFatPoints;
    final int? saturatedFatValue;
    final int? sodium;
    final int? sodiumPoints;
    final int? sodiumValue;
    final double? sugars;
    final int? sugarsPoints;
    final double? sugarsValue;
    final EcoscoreGrade? grade;
    final int? score;

    NutriscoreData({
        this.energy,
        this.energyPoints,
        this.energyValue,
        this.fiber,
        this.fiberPoints,
        this.fiberValue,
        this.fruitsVegetablesNutsColzaWalnutOliveOils,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        this.isBeverage,
        this.isCheese,
        this.isFat,
        this.isWater,
        this.negativePoints,
        this.positivePoints,
        this.proteins,
        this.proteinsPoints,
        this.proteinsValue,
        this.saturatedFat,
        this.saturatedFatPoints,
        this.saturatedFatValue,
        this.sodium,
        this.sodiumPoints,
        this.sodiumValue,
        this.sugars,
        this.sugarsPoints,
        this.sugarsValue,
        this.grade,
        this.score,
    });

    factory NutriscoreData.fromRawJson(String str) => NutriscoreData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NutriscoreData.fromJson(Map<String, dynamic> json) => NutriscoreData(
        energy: json["energy"],
        energyPoints: json["energy_points"],
        energyValue: json["energy_value"],
        fiber: json["fiber"],
        fiberPoints: json["fiber_points"],
        fiberValue: json["fiber_value"],
        fruitsVegetablesNutsColzaWalnutOliveOils: json["fruits_vegetables_nuts_colza_walnut_olive_oils"],
        fruitsVegetablesNutsColzaWalnutOliveOilsPoints: json["fruits_vegetables_nuts_colza_walnut_olive_oils_points"],
        fruitsVegetablesNutsColzaWalnutOliveOilsValue: json["fruits_vegetables_nuts_colza_walnut_olive_oils_value"],
        isBeverage: json["is_beverage"],
        isCheese: json["is_cheese"],
        isFat: json["is_fat"],
        isWater: json["is_water"],
        negativePoints: json["negative_points"],
        positivePoints: json["positive_points"],
        proteins: json["proteins"]?.toDouble(),
        proteinsPoints: json["proteins_points"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        saturatedFat: json["saturated_fat"],
        saturatedFatPoints: json["saturated_fat_points"],
        saturatedFatValue: json["saturated_fat_value"],
        sodium: json["sodium"],
        sodiumPoints: json["sodium_points"],
        sodiumValue: json["sodium_value"],
        sugars: json["sugars"]?.toDouble(),
        sugarsPoints: json["sugars_points"],
        sugarsValue: json["sugars_value"]?.toDouble(),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "energy": energy,
        "energy_points": energyPoints,
        "energy_value": energyValue,
        "fiber": fiber,
        "fiber_points": fiberPoints,
        "fiber_value": fiberValue,
        "fruits_vegetables_nuts_colza_walnut_olive_oils": fruitsVegetablesNutsColzaWalnutOliveOils,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_points": fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_value": fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        "is_beverage": isBeverage,
        "is_cheese": isCheese,
        "is_fat": isFat,
        "is_water": isWater,
        "negative_points": negativePoints,
        "positive_points": positivePoints,
        "proteins": proteins,
        "proteins_points": proteinsPoints,
        "proteins_value": proteinsValue,
        "saturated_fat": saturatedFat,
        "saturated_fat_points": saturatedFatPoints,
        "saturated_fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_points": sodiumPoints,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_points": sugarsPoints,
        "sugars_value": sugarsValue,
        "grade": ecoscoreGradeValues.reverse[grade],
        "score": score,
    };
}

class PackagingsMaterials {
    PackagingsMaterials();

    factory PackagingsMaterials.fromRawJson(String str) => PackagingsMaterials.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PackagingsMaterials.fromJson(Map<String, dynamic> json) => PackagingsMaterials(
    );

    Map<String, dynamic> toJson() => {
    };
}

class SelectedImages {
    final Front? front;
    final Front? ingredients;
    final Front? nutrition;
    final Front? packaging;

    SelectedImages({
        this.front,
        this.ingredients,
        this.nutrition,
        this.packaging,
    });

    factory SelectedImages.fromRawJson(String str) => SelectedImages.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SelectedImages.fromJson(Map<String, dynamic> json) => SelectedImages(
        front: json["front"] == null ? null : Front.fromJson(json["front"]),
        ingredients: json["ingredients"] == null ? null : Front.fromJson(json["ingredients"]),
        nutrition: json["nutrition"] == null ? null : Front.fromJson(json["nutrition"]),
        packaging: json["packaging"] == null ? null : Front.fromJson(json["packaging"]),
    );

    Map<String, dynamic> toJson() => {
        "front": front?.toJson(),
        "ingredients": ingredients?.toJson(),
        "nutrition": nutrition?.toJson(),
        "packaging": packaging?.toJson(),
    };
}

class Front {
    final Display? display;
    final Display? small;
    final Display? thumb;

    Front({
        this.display,
        this.small,
        this.thumb,
    });

    factory Front.fromRawJson(String str) => Front.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Front.fromJson(Map<String, dynamic> json) => Front(
        display: json["display"] == null ? null : Display.fromJson(json["display"]),
        small: json["small"] == null ? null : Display.fromJson(json["small"]),
        thumb: json["thumb"] == null ? null : Display.fromJson(json["thumb"]),
    );

    Map<String, dynamic> toJson() => {
        "display": display?.toJson(),
        "small": small?.toJson(),
        "thumb": thumb?.toJson(),
    };
}

class Display {
    final String? en;

    Display({
        this.en,
    });

    factory Display.fromRawJson(String str) => Display.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Display.fromJson(Map<String, dynamic> json) => Display(
        en: json["en"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
    };
}

class Result {
    final String? id;
    final String? lcName;
    final String? name;

    Result({
        this.id,
        this.lcName,
        this.name,
    });

    factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        lcName: json["lc_name"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "lc_name": lcName,
        "name": name,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
