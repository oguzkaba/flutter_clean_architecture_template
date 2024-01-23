// ignore_for_file: public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_template/src/core/init/network/errors/failures.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/models/article_model.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/models/articles_params_model.dart';

abstract class AbstractArticlesRepository {
  // Get Ny Times Articles
  Future<Either<Failure, List<ArticleModel>>> getArticles(
    ArticlesParamsModel params,
  );
}
