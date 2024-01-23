// ignore_for_file: public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_template/src/core/init/network/errors/failures.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/data/data_source/remote/articles_api_impl.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/models/article_model.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/models/articles_params_model.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/repositories/abstract_articles_repo.dart';

class ArticlesRepositoryImpl extends AbstractArticlesRepository {
  ArticlesRepositoryImpl(
    this.articlesApi,
  );

  final ArticlesApiImpl articlesApi;

  @override
  Future<Either<Failure, List<ArticleModel>>> getArticles(
    ArticlesParamsModel params,
  ) {
    // TODO: implement getArticles
    throw UnimplementedError();
  }

  // Gent Ny Times Articles
}
