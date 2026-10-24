.class public final synthetic Lw0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mega/carsettings/preference/MegaSegmentPreference;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lcom/mega/carsettings/preference/MegaSegmentPreference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/e;->c:Lcom/mega/carsettings/preference/MegaSegmentPreference;

    iput p2, p0, Lw0/e;->r:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw0/e;->c:Lcom/mega/carsettings/preference/MegaSegmentPreference;

    iget p0, p0, Lw0/e;->r:I

    invoke-virtual {v0, p0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    return-void
.end method
