.class public final Landroidx/fragment/app/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/t;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/lifecycle/Lifecycle$State;

.field public h:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/s0;->a:I

    iput-object p2, p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/t;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/s0;->g:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/s0;->h:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method
