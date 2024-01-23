// ignore_for_file: public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_template/src/core/init/network/errors/failures.dart';
import 'package:flutter_clean_architecture_template/src/core/utils/usecases/usecase.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/models/article_model.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/models/articles_params_model.dart';
import 'package:flutter_clean_architecture_template/src/features/articles/domain/repositories/abstract_articles_repo.dart';

class ArticlesUseCase extends UseCase<List<ArticleModel>, ArticlesParamsModel> {
  ArticlesUseCase(this.repository);
  final AbstractArticlesRepository repository;

  @override
  Future<Either<Failure, List<ArticleModel>>> call(
    ArticlesParamsModel params,
  ) async {
    final result = await repository.getArticles(params);
    return result.fold((l) {
      return Left(l);
    }, (r) async {
      return Right(r);
    });
  }
}
