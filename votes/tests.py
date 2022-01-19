from django.test import TestCase, Client

from users.models    import UserType, User
from products.models import Menu, MainImage, TagCategory, Tag, Product, ProductTag, SubImage

class ProductDetailTest(TestCase):
    def setUp(self):
        user_type_list = [
            UserType(
                id   = 1,
                name = 'mentor'
            ),
            UserType(
                id   = 2,
                name = 'mentee'
            )
        ]
        UserType.objects.bulk_create(user_type_list)

        user_list = [
            User(
                id           = 1,
                kakao_id     = 100,
                nickname     = 'nick1',
                email        = 'email1@bt.com',
                user_type_id = 1
            ),
            User(
                id           = 2,
                kakao_id     = 200,
                nickname     = 'nick2',
                email        = 'email2@bt.com',
                user_type_id = 2
            ),
            User(
                id           = 3,
                kakao_id     = 300,
                nickname     = 'nick3',
                email        = 'email3@bt.com',
                user_type_id = 1
            ),
            User(
                id           = 4,
                kakao_id     = 400,
                nickname     = 'nick4',
                email        = 'email4@bt.com',
                user_type_id = 2
            ),
            User(
                id           = 5,
                kakao_id     = 500,
                nickname     = 'nick5',
                email        = 'email5@bt.com',
                user_type_id = 1
            )
        ]
        User.objects.bulk_create(user_list)
       
        menu_list = [
            Menu(
                id   = 1,
                name = 'menu1'
            ),
            Menu(
                id   = 2,
                name = 'menu2'
            ),
            Menu(
                id   = 3,
                name = 'menu3'
            )
        ]
        Menu.objects.bulk_create(menu_list)

        main_image_list = [
            MainImage(
                id        = 1,
                image_url = 'main_image_url1'
            ),
            MainImage(
                id        = 2,
                image_url = 'main_image_url2'
            ),
            MainImage(
                id        = 3,
                image_url = 'main_image_url3'
            ),
            MainImage(
                id        = 4,
                image_url = 'main_image_url4'
            ),
            MainImage(
                id        = 5,
                image_url = 'main_image_url5'
            ),
            MainImage(
                id        = 6,
                image_url = 'main_image_url6'
            ),
            MainImage(
                id        = 7,
                image_url = 'main_image_url7'
            )
        ]
        MainImage.objects.bulk_create(main_image_list)

        tag_category_list = [
            TagCategory(
                id   = 1,
                name = 'tag_category1'
            ),
            TagCategory(
                id   = 2,
                name = 'tag_category2'
            ),
            TagCategory(
                id   = 3,
                name = 'tag_category3'
            ),
            TagCategory(
                id   = 4,
                name = 'tag_category4'
            )
        ]
        TagCategory.objects.bulk_create(tag_category_list)

        tag_list = [
            Tag(
                id              = 1,
                name            = 'tag_name1',
                tag_category_id = 1
            ),
            Tag(
                id              = 2,
                name            = 'tag_name2',
                tag_category_id = 1
            ),
            Tag(
                id              = 3,
                name            = 'tag_name3',
                tag_category_id = 1
            ),
            Tag(
                id              = 4,
                name            = 'tag_name4',
                tag_category_id = 2
            ),
            Tag(
                id              = 5,
                name            = 'tag_name5',
                tag_category_id = 2
            ),
            Tag(
                id              = 6,
                name            = 'tag_name6',
                tag_category_id = 2
            ),
            Tag(
                id              = 7,
                name            = 'tag_name7',
                tag_category_id = 3
            ),
            Tag(
                id              = 8,
                name            = 'tag_name8',
                tag_category_id = 3
            ),
            Tag(
                id              = 9,
                name            = 'tag_name9',
                tag_category_id = 3
            ),
            Tag(
                id              = 10,
                name            = 'tag_name10',
                tag_category_id = 4
            ),
            Tag(
                id              = 11,
                name            = 'tag_name11',
                tag_category_id = 4
            ),
            Tag(
                id              = 12,
                name            = 'tag_name12',
                tag_category_id = 4
            )
        ]
        Tag.objects.bulk_create(tag_list)

        product_list =[
            Product(
                id            = 1,
                name          = 'product1',
                description   = 'description1',
                main_image_id = 1,
                menu_id       = 1,
                user_id       = 1
            ),
            Product(
                id            = 2,
                name          = 'product2',
                description   = 'description2',
                main_image_id = 2,
                menu_id       = 2,
                user_id       = 2
            ),
            Product(
                id            = 3,
                name          = 'product3',
                description   = 'description3',
                main_image_id = 3,
                menu_id       = 3,
                user_id       = 3
            ),
            Product(
                id            = 4,
                name          = 'product4',
                description   = 'description4',
                main_image_id = 4,
                menu_id       = 1,
                user_id       = 4
            ),
            Product(
                id            = 5,
                name          = 'product5',
                description   = 'description5',
                main_image_id = 5,
                menu_id       = 2,
                user_id       = 5
            ),
            Product(
                id            = 6,
                name          = 'product6',
                description   = 'description6',
                main_image_id = 6,
                menu_id       = 3,
                user_id       = 1
            ),
            Product(
                id            = 7,
                name          = 'product7',
                description   = 'description7',
                main_image_id = 7,
                menu_id       = 1,
                user_id       = 3
            )
        ]
        Product.objects.bulk_create(product_list)

        sub_image_list = [
            SubImage(
                id         = 1,
                image_url  = 'sub_image_url1',
                product_id = 1
            ),
            SubImage(
                id         = 2,
                image_url  = 'sub_image_url2',
                product_id = 1
            ),
            SubImage(
                id         = 3,
                image_url  = 'sub_image_url3',
                product_id = 2
            ),
            SubImage(
                id         = 4,
                image_url  = 'sub_image_url4',
                product_id = 2
            ),
            SubImage(
                id         = 5,
                image_url  = 'sub_image_url5',
                product_id = 3
            ),
            SubImage(
                id         = 6,
                image_url  = 'sub_image_url6',
                product_id = 3
            ),
            SubImage(
                id         = 7,
                image_url  = 'sub_image_url7',
                product_id = 4
            ),
            SubImage(
                id         = 8,
                image_url  = 'sub_image_url8',
                product_id = 4
            ),
            SubImage(
                id         = 9,
                image_url  = 'sub_image_url9',
                product_id = 5
            ),
            SubImage(
                id         = 10,
                image_url  = 'sub_image_url10',
                product_id = 5
            ),
            SubImage(
                id         = 11,
                image_url  = 'sub_image_url11',
                product_id = 6
            ),
            SubImage(
                id         = 12,
                image_url  = 'sub_image_url12',
                product_id = 6
            )
        ]
        SubImage.objects.bulk_create(sub_image_list)

        product_tag_list = [
            ProductTag(
                tag_id     = 1,
                product_id = 1
            ),
            ProductTag(
                tag_id     = 4,
                product_id = 1
            ),
            ProductTag(
                tag_id     = 10,
                product_id = 1
            ),
            ProductTag(
                tag_id     = 2,
                product_id = 2
            ),
            ProductTag(
                tag_id     = 5,
                product_id = 2
            ),
            ProductTag(
                tag_id     = 9,
                product_id = 2
            ),
            ProductTag(
                tag_id     = 1,
                product_id = 3
            ),
            ProductTag(
                tag_id     = 5,
                product_id = 3
            ),
            ProductTag(
                tag_id     = 11,
                product_id = 3
            ),
            ProductTag(
                tag_id     = 3,
                product_id = 4
            ),
            ProductTag(
                tag_id     = 5,
                product_id = 4
            ),
            ProductTag(
                tag_id     = 8,
                product_id = 4
            ),
            ProductTag(
                tag_id     = 1,
                product_id = 5
            ),
            ProductTag(
                tag_id     = 7,
                product_id = 5
            ),
            ProductTag(
                tag_id     = 12,
                product_id = 5
            ),
            ProductTag(
                tag_id     = 1,
                product_id = 6
            ),
            ProductTag(
                tag_id     = 6,
                product_id = 6
            ),
            ProductTag(
                tag_id     = 9,
                product_id = 6
            ),
            ProductTag(
                tag_id     = 3,
                product_id = 7
            ),
            ProductTag(
                tag_id     = 8,
                product_id = 7
            ),
            ProductTag(
                tag_id     = 12,
                product_id = 7
            )
        ]
        ProductTag.objects.bulk_create(product_tag_list)

    def tearDown(self):
        ProductTag.objects.all().delete()
        SubImage.objects.all().delete()
        Product.objects.all().delete()
        Tag.objects.all().delete()
        TagCategory.objects.all().delete()
        MainImage.objects.all().delete()
        Menu.objects.all().delete()
        User.objects.all().delete()
        UserType.objects.all().delete()
        
    def test_success_detail_get(self):
        client   = Client()
        response = client.get('/products/1')

        self.assertEqual(response.json(), 
            {
            'result': {
                'description' : 'description1',
                'main_image'  : 'main_image_url1',
                'product_name': 'product1',
                'sub_image'   : ['sub_image_url1', 'sub_image_url2'],
                'tag'         : ['tag_name1', 'tag_name4', 'tag_name10'],
                'user'        : 'nick1'
                }
            }
        )
        
        self.assertEqual(response.status_code, 200)

    def test_fail_detail_get_when_the_product_does_not_exist(self):
        client   = Client()
        response = client.get('/products/100')

        self.assertEqual(response.json(), 
            {'message': 'DOES_NOT_EXIST'}
        )
        
        self.assertEqual(response.status_code, 404)

    def test_fail_detail_get_when_the_image_does_not_exist(self):
        client   = Client()
        response = client.get('/products/7')

        self.assertEqual(response.json(),
            {'message': 'IMAGE_DOES_NOT_EXIST'}
        )

        self.assertEqual(response.status_code, 400)