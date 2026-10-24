.class public final Lcom/google/android/material/bottomappbar/c;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:Lcom/google/android/material/bottomappbar/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/c;->x:Lcom/google/android/material/bottomappbar/d;

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/c;->x:Lcom/google/android/material/bottomappbar/d;

    iget-object v0, v0, Lcom/google/android/material/bottomappbar/d;->y:Lcom/google/android/material/bottomappbar/BottomAppBar;

    sget v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
