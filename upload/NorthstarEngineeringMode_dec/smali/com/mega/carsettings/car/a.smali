.class public abstract Lcom/mega/carsettings/car/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/car/a$a;
    }
.end annotation


# static fields
.field public static b:Lcom/mega/carsettings/car/a;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mega/carsettings/car/a;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
