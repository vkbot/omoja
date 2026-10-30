.class public final synthetic Landroidx/navigation/fragment/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/fragment/app/FragmentOnAttachListener;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavigatorState;

.field public final synthetic c:Landroidx/navigation/fragment/FragmentNavigator;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/fragment/c;->b:Landroidx/navigation/NavigatorState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/fragment/c;->c:Landroidx/navigation/fragment/FragmentNavigator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/c;->b:Landroidx/navigation/NavigatorState;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/fragment/c;->c:Landroidx/navigation/fragment/FragmentNavigator;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/navigation/fragment/FragmentNavigator;->a(Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
