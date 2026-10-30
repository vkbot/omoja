.class public final synthetic Lx0/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

.field public final synthetic c:Lx0/m;

.field public final synthetic d:Landroid/widget/EditText;

.field public final synthetic e:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field public final synthetic f:Landroid/widget/Spinner;

.field public final synthetic g:Landroid/widget/Spinner;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/m;Landroid/widget/EditText;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/Spinner;Landroid/widget/Spinner;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx0/d;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lx0/d;->c:Lx0/m;

    .line 7
    .line 8
    iput-object p3, p0, Lx0/d;->d:Landroid/widget/EditText;

    .line 9
    .line 10
    iput-object p4, p0, Lx0/d;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 11
    .line 12
    iput-object p5, p0, Lx0/d;->f:Landroid/widget/Spinner;

    .line 13
    .line 14
    iput-object p6, p0, Lx0/d;->g:Landroid/widget/Spinner;

    .line 15
    .line 16
    iput-boolean p7, p0, Lx0/d;->h:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget-object v5, p0, Lx0/d;->g:Landroid/widget/Spinner;

    .line 2
    .line 3
    iget-boolean v6, p0, Lx0/d;->h:Z

    .line 4
    .line 5
    iget-object v0, p0, Lx0/d;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 6
    .line 7
    iget-object v1, p0, Lx0/d;->c:Lx0/m;

    .line 8
    .line 9
    iget-object v2, p0, Lx0/d;->d:Landroid/widget/EditText;

    .line 10
    .line 11
    iget-object v3, p0, Lx0/d;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 12
    .line 13
    iget-object v4, p0, Lx0/d;->f:Landroid/widget/Spinner;

    .line 14
    .line 15
    move-object v7, p1

    .line 16
    move v8, p2

    .line 17
    invoke-static/range {v0 .. v8}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->y(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/m;Landroid/widget/EditText;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/Spinner;Landroid/widget/Spinner;ZLandroid/content/DialogInterface;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
