.class public abstract Lcom/google/android/material/datepicker/a0;
.super Landroidx/fragment/app/t;
.source "SourceFile"


# instance fields
.field public final S:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/a0;->S:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public F(Lcom/google/android/material/datepicker/s;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/a0;->S:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
