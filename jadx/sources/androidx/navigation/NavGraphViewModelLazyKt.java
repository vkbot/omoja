package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\u001a>\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0087\bø\u0001\u0000\u001aP\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0010\b\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b2\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0087\bø\u0001\u0000\u001a<\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0087\bø\u0001\u0000\u001aN\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0010\b\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b2\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e²\u0006\u0016\u0010\u000f\u001a\u00020\u0010\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003X\u008a\u0084\u0002²\u0006\u0016\u0010\u000f\u001a\u00020\u0010\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003X\u008a\u0084\u0002²\u0006\u0016\u0010\u000f\u001a\u00020\u0010\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003X\u008a\u0084\u0002²\u0006\u0016\u0010\u000f\u001a\u00020\u0010\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003X\u008a\u0084\u0002"}, m3159d2 = {"navGraphViewModels", "Lkotlin/Lazy;", "VM", "Landroidx/lifecycle/ViewModel;", "Landroidx/fragment/app/Fragment;", "navGraphId", "", "factoryProducer", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "extrasProducer", "Landroidx/lifecycle/viewmodel/CreationExtras;", "navGraphRoute", "", "navigation-fragment_release", "backStackEntry", "Landroidx/navigation/NavBackStackEntry;"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavGraphViewModelLazyKt {

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06561 extends Lambda implements Function0<CreationExtras> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06561(Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final CreationExtras invoke() {
            return NavGraphViewModelLazyKt.m6071navGraphViewModels$lambda0(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$2 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06572 extends Lambda implements Function0<ViewModelProvider.Factory> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06572(Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m6071navGraphViewModels$lambda0(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$3 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06583 extends Lambda implements Function0<CreationExtras> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;
        final /* synthetic */ Function0<CreationExtras> $extrasProducer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06583(Function0<? extends CreationExtras> function0, Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$extrasProducer = function0;
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            Function0<CreationExtras> function0 = this.$extrasProducer;
            return (function0 == null || (creationExtrasInvoke = function0.invoke()) == null) ? NavGraphViewModelLazyKt.m6072navGraphViewModels$lambda1(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras() : creationExtrasInvoke;
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$4 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06594 extends Lambda implements Function0<ViewModelProvider.Factory> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06594(Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m6072navGraphViewModels$lambda1(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$5 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06605 extends Lambda implements Function0<CreationExtras> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06605(Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final CreationExtras invoke() {
            return NavGraphViewModelLazyKt.m6073navGraphViewModels$lambda2(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$6 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06616 extends Lambda implements Function0<ViewModelProvider.Factory> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06616(Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m6073navGraphViewModels$lambda2(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$7 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06627 extends Lambda implements Function0<CreationExtras> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;
        final /* synthetic */ Function0<CreationExtras> $extrasProducer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06627(Function0<? extends CreationExtras> function0, Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$extrasProducer = function0;
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            Function0<CreationExtras> function0 = this.$extrasProducer;
            return (function0 == null || (creationExtrasInvoke = function0.invoke()) == null) ? NavGraphViewModelLazyKt.m6074navGraphViewModels$lambda3(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras() : creationExtrasInvoke;
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$8 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06638 extends Lambda implements Function0<ViewModelProvider.Factory> {
        final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06638(Lazy<NavBackStackEntry> lazy) {
            super(0);
            this.$backStackEntry$delegate = lazy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m6074navGraphViewModels$lambda3(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Superseded by navGraphViewModels that takes a CreationExtras producer")
    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> Lazy<VM> navGraphViewModels(Fragment fragment, String str, Function0<? extends ViewModelProvider.Factory> function0) {
        fragment.getClass();
        str.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$6(fragment, str));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$3 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06605 c06605 = new C06605(lazy);
        if (function0 == null) {
            function0 = new C06616(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$3, c06605, function0);
    }

    public static /* synthetic */ Lazy navGraphViewModels$default(Fragment fragment, String str, Function0 function0, Function0 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        fragment.getClass();
        str.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8(fragment, str));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$4 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06627 c06627 = new C06627(function0, lazy);
        if (function1 == null) {
            function1 = new C06638(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$4, c06627, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-0, reason: not valid java name */
    public static final NavBackStackEntry m6071navGraphViewModels$lambda0(Lazy<NavBackStackEntry> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-1, reason: not valid java name */
    public static final NavBackStackEntry m6072navGraphViewModels$lambda1(Lazy<NavBackStackEntry> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-2, reason: not valid java name */
    public static final NavBackStackEntry m6073navGraphViewModels$lambda2(Lazy<NavBackStackEntry> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-3, reason: not valid java name */
    public static final NavBackStackEntry m6074navGraphViewModels$lambda3(Lazy<NavBackStackEntry> lazy) {
        return lazy.getValue();
    }

    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> Lazy<VM> navGraphViewModels(Fragment fragment, @IdRes int i10, Function0<? extends CreationExtras> function0, Function0<? extends ViewModelProvider.Factory> function1) {
        fragment.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$4(fragment, i10));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$2 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06583 c06583 = new C06583(function0, lazy);
        if (function1 == null) {
            function1 = new C06594(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$2, c06583, function1);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Superseded by navGraphViewModels that takes a CreationExtras producer")
    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> Lazy<VM> navGraphViewModels(Fragment fragment, @IdRes int i10, Function0<? extends ViewModelProvider.Factory> function0) {
        fragment.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(fragment, i10));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06561 c06561 = new C06561(lazy);
        if (function0 == null) {
            function0 = new C06572(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1, c06561, function0);
    }

    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> Lazy<VM> navGraphViewModels(Fragment fragment, String str, Function0<? extends CreationExtras> function0, Function0<? extends ViewModelProvider.Factory> function1) {
        fragment.getClass();
        str.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8(fragment, str));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$4 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06627 c06627 = new C06627(function0, lazy);
        if (function1 == null) {
            function1 = new C06638(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$4, c06627, function1);
    }

    public static /* synthetic */ Lazy navGraphViewModels$default(Fragment fragment, int i10, Function0 function0, Function0 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        fragment.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$4(fragment, i10));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$2 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06583 c06583 = new C06583(function0, lazy);
        if (function1 == null) {
            function1 = new C06594(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$2, c06583, function1);
    }

    public static /* synthetic */ Lazy navGraphViewModels$default(Fragment fragment, String str, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        fragment.getClass();
        str.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$6(fragment, str));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$3 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06605 c06605 = new C06605(lazy);
        if (function0 == null) {
            function0 = new C06616(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$3, c06605, function0);
    }

    public static /* synthetic */ Lazy navGraphViewModels$default(Fragment fragment, int i10, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        fragment.getClass();
        Lazy lazy = LazyKt.lazy(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(fragment, i10));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(lazy);
        Intrinsics.reifiedOperationMarker(4, "VM");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ViewModel.class);
        C06561 c06561 = new C06561(lazy);
        if (function0 == null) {
            function0 = new C06572(lazy);
        }
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, orCreateKotlinClass, navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1, c06561, function0);
    }
}
