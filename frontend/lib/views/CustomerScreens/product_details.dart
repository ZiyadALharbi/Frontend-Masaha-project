import 'package:flutter/material.dart';
import '../../components/Customer/Product_Details/booking/booking_button.dart';
import '../../components/Customer/Product_Details/details.dart';
import '../../components/Customer/Product_Details/details_icons.dart';
import '../../components/Customer/Product_Details/images_product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Stack(
            children: [
              Images(
                image1Url: 'images/Group 71.png',
                image2Url: 'images/Group 68.png',
                image3Url: 'images/Group 72.png',
              ),
              DetailsIcons(),
            ],
          ),
          Details(
            ownerName: 'إسم المالك',
            spaceName: 'المساحة',
            price: '550',
            location: 'الموقع',
            description:
                "بْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي بْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْكَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْ",
          ),
          BookingButton()
        ],
      ),
    );
  }
}
