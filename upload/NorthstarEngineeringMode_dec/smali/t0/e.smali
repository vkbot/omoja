.class public final synthetic Lt0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/e;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lt0/e;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/preference/PreferenceDataStore;

    sget-object v0, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lt0/e;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lt0/e;->b:Z

    invoke-virtual {p1, v0, p0}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
