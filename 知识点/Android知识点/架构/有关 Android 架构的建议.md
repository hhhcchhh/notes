# 有关 Android 架构的建议

原文：https://developer.android.google.cn/topic/architecture/recommendations?hl=zh-cn

## 分层架构

我们建议采用的[分层架构](https://developer.android.google.cn/topic/architecture?gclid=CjwKCAjw6raYBhB7EiwABge5Klm_5PN8nJF0Jrb_ymrPP0JAEsbmemmGv_nsn0nBQKQtQMCBuvjehRoC7qcQAvD_BwE&%3Bgclsrc=aw.ds&hl=zh-cn#recommended-app-arch)有助于实现关注点分离。这种架构可以通过数据模型来驱动界面，符合单一可信来源原则，也符合[单向数据流](https://developer.android.google.cn/topic/architecture?gclid=CjwKCAjw6raYBhB7EiwABge5Klm_5PN8nJF0Jrb_ymrPP0JAEsbmemmGv_nsn0nBQKQtQMCBuvjehRoC7qcQAvD_BwE&%3Bgclsrc=aw.ds&hl=zh-cn#unidirectional-data-flow)原则。

| 建议                                                         | 说明                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| 使用明确定义的[数据层](https://developer.android.google.cn/jetpack/guide/data-layer?hl=zh-cn)。**强烈建议** | [数据层](https://developer.android.google.cn/jetpack/guide/data-layer?hl=zh-cn)用于向应用的其余部分公开应用数据，并且包含应用的绝大部分业务逻辑。您应该创建[代码库](https://developer.android.google.cn/topic/architecture/data-layer?hl=zh-cn#architecture)，即使它们只包含一个数据源也不例外。在小型应用中，您可以选择将数据层类型放置在 `data` 软件包或模块中。 |
| 使用明确定义的[界面层](https://developer.android.google.cn/jetpack/guide/ui-layer?hl=zh-cn)。**强烈建议** | [界面层](https://developer.android.google.cn/jetpack/guide/ui-layer?hl=zh-cn)用于在屏幕上显示应用数据，并充当主要的用户互动点。在小型应用中，您可以选择将数据层类型放置在 `ui` 软件包或模块中。[如需了解更多有关界面层的最佳实践，请访问此处](https://developer.android.google.cn/topic/architecture/recommendations?hl=zh-cn#ui-layer)。 |
| [数据层](https://developer.android.google.cn/jetpack/guide/data-layer?hl=zh-cn)应该使用代码库来公开应用数据。**强烈建议** | 界面层中的组件（如可组合项、activity 或 ViewModel）不应直接与数据源交互。数据源示例：数据库、DataStore、SharedPreferences、Firebase API。GPS 位置信息提供程序。蓝牙数据提供程序。网络连接状态提供程序。 |
| 使用[协程和数据流](https://developer.android.google.cn/kotlin/coroutines?gclid=CjwKCAjwhNWZBhB_EiwAPzlhNtReVIBfrUFBUt6SqZz3YLezP9YEiGuBube4YSTrOF-0ovxzpNGNaRoCiYsQAvD_BwE&gclsrc=aw.ds&hl=zh-cn)。**强烈建议** | 使用[协程和数据流](https://developer.android.google.cn/kotlin/coroutines?gclid=CjwKCAjwhNWZBhB_EiwAPzlhNtReVIBfrUFBUt6SqZz3YLezP9YEiGuBube4YSTrOF-0ovxzpNGNaRoCiYsQAvD_BwE&gclsrc=aw.ds&hl=zh-cn)在层之间进行通信。[如需了解更多有关协程的最佳实践，请访问此处](https://developer.android.google.cn/kotlin/coroutines/coroutines-best-practices?hl=zh-cn)。 |
| 使用[网域层](https://developer.android.google.cn/jetpack/guide/domain-layer?hl=zh-cn)。**建议在大型应用中使用** | 如果您需要在多个 ViewModel 中重复使用与数据层交互的业务逻辑，或者想要简化特定 ViewModel 业务逻辑的复杂程度，请使用[网域层](https://developer.android.google.cn/jetpack/guide/domain-layer?hl=zh-cn) |

## 界面层

[界面层](https://developer.android.google.cn/topic/architecture/ui-layer?hl=zh-cn)的作用是在屏幕上显示应用数据，并充当主要的用户互动点。以下是一些有关界面层的最佳实践：

| 建议                                                         | 说明                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| 遵循[单向数据流 (UDF)](https://developer.android.google.cn/jetpack/compose/architecture?hl=zh-cn#udf) 原则。**强烈建议** | 遵循[单向数据流 (UDF)](https://developer.android.google.cn/jetpack/compose/architecture?hl=zh-cn#udf) 原则，即 ViewModel 使用观察者模式来公开界面状态，并通过方法调用接收来自界面的操作。 |
| 如果 [AAC ViewModel](https://developer.android.google.cn/topic/libraries/architecture/viewmodel?hl=zh-cn) 的优势适用于您的应用，请加以使用。**强烈建议** | 使用 [AAC ViewModel](https://developer.android.google.cn/topic/libraries/architecture/viewmodel?hl=zh-cn) [处理业务逻辑](https://developer.android.google.cn/jetpack/guide/ui-layer?hl=zh-cn#logic-types)，并提取应用数据以向界面公开界面状态（Compose 或 Android View）。[如需详细了解有关 ViewModel 的最佳实践，请访问此处](https://developer.android.google.cn/topic/architecture/recommendations?hl=zh-cn#viewmodel)。[如需了解 ViewModel 的优势，请访问此处](https://developer.android.google.cn/topic/architecture/ui-layer/stateholders?hl=zh-cn#viewmodel-as)。 |
| 使用生命周期感知型界面状态收集方式。**强烈建议**             | 使用适当的生命周期感知型协程构建器从界面收集界面状态：View 系统中使用 [`repeatOnLifecycle`](https://developer.android.google.cn/reference/kotlin/androidx/lifecycle/package-summary?hl=zh-cn#(androidx.lifecycle.Lifecycle).repeatOnLifecycle(androidx.lifecycle.Lifecycle.State,kotlin.coroutines.SuspendFunction1))，Jetpack Compose 中使用 [`collectAsStateWithLifecycle`](https://developer.android.google.cn/reference/kotlin/androidx/lifecycle/compose/package-summary?hl=zh-cn#(kotlinx.coroutines.flow.StateFlow).collectAsStateWithLifecycle(androidx.lifecycle.LifecycleOwner,androidx.lifecycle.Lifecycle.State,kotlin.coroutines.CoroutineContext))。详细了解 [`repeatOnLifecycle`](https://medium.com/androiddevelopers/a-safer-way-to-collect-flows-from-android-uis-23080b1f8bda)。详细了解 [`collectAsStateWithLifecycle`](https://medium.com/androiddevelopers/consuming-flows-safely-in-jetpack-compose-cde014d0d5a3)。 |
| 请勿将来自 ViewModel 的事件发送到界面。**强烈建议**          | 在 ViewModel 中立即处理事件，并通过事件的处理结果引发状态更新。[如需详细了解界面事件，请访问此处](https://developer.android.google.cn/topic/architecture/ui-layer/events?hl=zh-cn#handle-viewmodel-events)。 |
| 使用单 activity 应用。**建议**                               | 如果您的应用包含多个屏幕，请使用 [Navigation fragment](https://developer.android.google.cn/guide/navigation?hl=zh-cn) 或 [Navigation Compose](https://developer.android.google.cn/jetpack/compose/navigation?hl=zh-cn) 在屏幕以及指向您应用的深层链接之间导航。 |
| 使用 [Jetpack Compose](https://developer.android.google.cn/jetpack/compose?hl=zh-cn)。**建议** | 使用 [Jetpack Compose](https://developer.android.google.cn/jetpack/compose?hl=zh-cn) 为手机、平板电脑、可折叠设备和 Wear OS 构建新应用。 |

以下代码段简要说明了如何以生命周期感知型方式收集界面状态：

```kotlin
class MyFragment : Fragment() {

    private val viewModel: MyViewModel by viewModel()

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        viewLifecycleOwner.lifecycleScope.launch {
            viewLifecycleOwner.repeatOnLifecycle(Lifecycle.State.STARTED) {
                viewModel.uiState.collect {
                    // Process item
                }
            }
        }
    }
}
```

## ViewModel

[ViewModel](https://developer.android.google.cn/topic/architecture/ui-layer/stateholders?hl=zh-cn#business-logic) 负责提供界面状态和对数据层的访问权限。以下是一些有关 ViewModel 的最佳实践：

| 建议                                                         | 说明                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| ViewModel 应该与 Android 生命周期无关。**强烈建议**          | ViewModel 不应存储对任何与生命周期相关的类型的引用。请勿将 `Activity, Fragment, Context` 或 `Resources` 作为依赖项传递。如果某元素需要在 ViewModel 中使用 `Context`，您应该严格评估其是否位于正确的层中。 |
| 使用[协程和数据流](https://developer.android.google.cn/kotlin/coroutines?gclid=CjwKCAjwhNWZBhB_EiwAPzlhNtReVIBfrUFBUt6SqZz3YLezP9YEiGuBube4YSTrOF-0ovxzpNGNaRoCiYsQAvD_BwE&gclsrc=aw.ds&hl=zh-cn)。**强烈建议** | ViewModel 通过以下方式与数据层或网域层交互：通过 Kotlin 数据流接收应用数据；通过 `suspend` 函数使用 [`viewModelScope`](https://developer.android.google.cn/topic/libraries/architecture/coroutines?hl=zh-cn#viewmodelscope) 执行操作。 |
| 在屏幕级别使用 ViewModel。**强烈建议**                       | 请勿在可重用的界面\组件中使用 ViewModel。您应该在以下位置使用 ViewModel：屏幕级别的可组合项（Activity\Fragment而不是特定的UI组件）；View 中的 activity/fragment；使用 [Jetpack Navigation](https://developer.android.google.cn/guide/navigation?hl=zh-cn) 时的目的地或图表。 |
| 在可重复使用的界面组件中使用[普通状态容器类](https://developer.android.google.cn/topic/architecture/ui-layer/stateholders?hl=zh-cn#ui-logic)。**强烈建议** | 使用[普通状态容器类](https://developer.android.google.cn/topic/architecture/ui-layer/stateholders?hl=zh-cn#ui-logic)处理可重复使用的界面组件中的复杂工作。这样即可从外部对状态进行提升和控制。 |
| 请勿使用 [`AndroidViewModel`](https://developer.android.google.cn/reference/androidx/lifecycle/AndroidViewModel?hl=zh-cn)。**建议** | 使用 [`ViewModel`](https://developer.android.google.cn/reference/androidx/lifecycle/ViewModel?hl=zh-cn) 类，而非 [`AndroidViewModel`](https://developer.android.google.cn/reference/androidx/lifecycle/AndroidViewModel?hl=zh-cn)。不应在 ViewModel 中使用 `Application` 类。正确做法是将依赖项移至界面层或数据层。 |
| 公开界面状态。**建议**                                       | ViewModel 应该通过名为 `uiState` 的单个属性向界面公开数据。如果界面显示多块不相关的数据，虚拟机可能会[公开多个界面状态属性](https://developer.android.google.cn/jetpack/guide/ui-layer?hl=zh-cn#additional-considerations)。您应该将 `uiState` 设置为 `StateFlow`。如果数据作为来自层次结构中的其他层的数据流传入，您应该使用 [`stateIn`](https://kotlinlang.org/api/kotlinx.coroutines/kotlinx-coroutines-core/kotlinx.coroutines.flow/state-in.html) 运算符和 [`WhileSubscribed(5000)`](https://medium.com/androiddevelopers/migrating-from-livedata-to-kotlins-flow-379292f419fb) 政策[（示例）](https://github.com/android/compose-samples/blob/main/JetNews/app/src/main/java/com/example/jetnews/ui/interests/InterestsViewModel.kt#L56)来创建 `uiState`。如果没有来自数据层的数据流，则属于较简单的情况，可以使用作为不可变的 `StateFlow` [（示例）](https://github.com/android/compose-samples/blob/main/Jetcaster/app/src/main/java/com/example/jetcaster/ui/home/category/PodcastCategoryViewModel.kt#L37)公开的 `MutableStateFlow`。您可以选择将 `${Screen}UiState` 作为能够包含数据、错误和加载信号的数据类。如果不同状态是互斥的，该类也可以是密封的类。 |

## 生命周期

以下是一些有关如何使用 [Android 生命周期](https://developer.android.google.cn/guide/components/activities/activity-lifecycle?hl=zh-cn)的最佳实践：

| 建议                                                         | 说明                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| 请勿替换 activity 或 fragment 中的生命周期方法。**强烈建议** | 请勿替换 activity 或 fragment 中的 `onResume` 等生命周期方法。可以改为使用 [`LifecycleObserver`](https://developer.android.google.cn/reference/androidx/lifecycle/LifecycleObserver?hl=zh-cn)。如果应用需要在生命周期达到特定 `Lifecycle.State` 时执行工作，请使用 [`repeatOnLifecycle`](https://developer.android.google.cn/reference/kotlin/androidx/lifecycle/package-summary?hl=zh-cn#(androidx.lifecycle.Lifecycle).repeatOnLifecycle(androidx.lifecycle.Lifecycle.State,kotlin.coroutines.SuspendFunction1)) API。 |

## 处理依赖关系

在管理组件之间的依赖关系时，您应遵循以下几项最佳实践：

| 建议                                                         | 说明                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| 使用[依赖项注入](https://developer.android.google.cn/training/dependency-injection?hl=zh-cn)。**强烈建议** | 尽可能使用[依赖项注入](https://developer.android.google.cn/training/dependency-injection?hl=zh-cn)最佳实践，主要是[构造函数注入](https://developer.android.google.cn/training/dependency-injection?hl=zh-cn#what-is-di)。 |
| 在必要时将作用域限定为某个组件。**强烈建议**                 | 如果类型包含多项需要共享的可变数据，或者类型初始化开销高昂且在应用中广泛使用，则将作用域限定为某个[依赖项容器](https://developer.android.google.cn/training/dependency-injection/manual?hl=zh-cn#dependencies-container)。 |
| 使用 [Hilt](https://developer.android.google.cn/training/dependency-injection/hilt-android?hl=zh-cn)。**建议** | 在简单应用中使用 [Hilt](https://developer.android.google.cn/training/dependency-injection/hilt-android?hl=zh-cn) 或[手动依赖项注入](https://developer.android.google.cn/training/dependency-injection/manual?hl=zh-cn)。如果您的项目足够复杂，则使用 [Hilt](https://developer.android.google.cn/training/dependency-injection/hilt-android?hl=zh-cn)。例如，如果您：有多个包含 ViewModel 的屏幕：集成使用 WorkManager：集成对 Navigation 进行高级运用，例如作用域限定为导航图的 ViewModel：集成。 |

## 测试

以下是一些有关[测试](https://developer.android.google.cn/training/testing/fundamentals?hl=zh-cn)的最佳实践：

| 建议                                                         | 说明                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| [了解要测试的内容](https://developer.android.google.cn/training/testing/fundamentals/what-to-test?hl=zh-cn)。**强烈建议** | 除非项目基本上像“Hello World”应用一样简单，否则您至少应对其进行以下几项测试：对 ViewModel（包括 Flow）进行单元测试。对数据层实体进行单元测试。即对代码库和数据源进行单元测试。进行界面导航测试（可在持续集成环境中用作回归测试）。 |
| 尽量采用虚假实现，而非模拟实现。**强烈建议**                 | 如需了解详情，请参阅 [Android 文档中的“使用测试替身”](https://developer.android.google.cn/training/testing/fundamentals/test-doubles?hl=zh-cn)。 |
| 测试 StateFlow。**强烈建议**                                 | 测试 `StateFlow` 时：尽可能[对 `value` 属性进行断言](https://developer.android.google.cn/kotlin/flow/test?hl=zh-cn#stateflows)如果使用 `WhileSubscribed`，您应该[创建一个 `collectJob`](https://developer.android.google.cn/kotlin/flow/test?hl=zh-cn#statein) |

如需了解详情，请参阅 [Android DAC 指南中的“要测试的内容”](https://developer.android.google.cn/training/testing/fundamentals/what-to-test?hl=zh-cn)。

## 模型

在应用中开发模型时，应该遵循以下最佳实践：

| 建议                                           | 说明                                                         |
| :--------------------------------------------- | :----------------------------------------------------------- |
| 对于复杂应用，要为每个层创建一个模型。**建议** | 在复杂应用中，必要时可以在不同的层或组件中创建新模型。请参考以下示例：远程数据源可以将通过网络接收的模型映射到仅包含应用所需的数据的简单类。代码库可以将 DAO 模型映射到仅包含界面层所需的数据的简单数据类型。ViewModel 可以在 `UiState` 类中包含数据层模型。 |

## 命名惯例

为代码库命名时，您应了解以下最佳实践：

| 建议                     | 说明                                                         |
| :----------------------- | :----------------------------------------------------------- |
| 命名方法。**可选**       | 为方法命名时应该使用动词短语。例如，`makePayment()`。        |
| 为属性命名。**可选**     | 为属性命名时应该使用名词短语。例如，`inProgressTopicSelection`。 |
| 为数据流命名。**可选**   | 如果某个类公开了 Flow 流、LiveData 或任何其他流，则命名惯例为 `get{model}Stream()`。例如，`getAuthorStream(): Flow<Author>` 如果函数会返回模型列表，则模型名称应该采用复数形式：`getAuthorsStream(): Flow<List<Author>>` |
| 为接口实现命名。**可选** | 接口实现的名称应该有意义。如果找不到更好的名称，请使用 `Default` 作为前缀。例如，对于 `NewsRepository` 接口，您可以使用 `OfflineFirstNewsRepository` 或 `InMemoryNewsRepository`。如果找不到合适的名称，请使用 `DefaultNewsRepository`。 虚假实现应该添加前缀 `Fake`，例如 `FakeAuthorsRepository`。 |