.class public abstract Lcom/google/android/material/datepicker/a0;
.super Landroidx/fragment/app/t;
.source "SourceFile"


# instance fields
.field public final T:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/a0;->T:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public F(Lcom/google/android/material/datepicker/s;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/a0;->T:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
