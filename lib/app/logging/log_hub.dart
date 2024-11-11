// ignore_for_file: lines_longer_than_80_chars

import 'package:memories/app/dio_interceptors/log_interceptor.dart';
import 'package:memories/app/logging/bloc_logging/bloc_log.dart';
import 'package:memories/app/logging/navigation_observer.dart';

/// Во всех текущих логгерах используется 3 уровня логирования: none, normal, prioritized.
/// Уровни выставляются в двух местах для каждого логгера: глобально и локального, т.е. в каждый конечный объект (отдельный dio-клиент, блок или навигатор).
/// Глобальный уровень регулирует, какие логи будут выводиться в консоль от конечных логирующих объектов:
/// none         -  ничего не пропускать;
/// normal       -  пропускать нормальный и приоритетный уровень;
/// prioritized  -  пропускать только приоритетный уровень.
///
/// Уровень у конечных логирующих объектов регулирует вывод логов в консполь от каждого конкретного объекта:
/// none         -  этот объект не логирует;
/// normal       -  этот объект логирует;
/// prioritized  -  этот объект логирует.
///
/// Разница между normal и prioritized в этом случае заключается в том, что через комбинацию глобального и локального
/// уровня удобного добиться вывода только нужных логов без ручного отключения всех остальных объектов этого логгера.
///
/// Например, нужно выводить только логи клиента авторизации. Для этого:
/// 1) меняем глобальный уровень логирования dio на prioritized
/// 2) меняем глобальный уровень логирования блока и навигации на none
/// 3) меняем локальный уровень логирования у нужного клиента на prioritized
///
/// Альтернативный (плохой) путь для решения этой проблемы - руками менять локальные уровни логирования у десятков объектов на none, а потом обратно.

const globalDioLoggerLevel = DioLogLevel.normal;
const globalBlocLoggerLevel = BlocLogLevel.normal;
const globalNavigationLoggerLevel = NavigationLogLevel.none;
