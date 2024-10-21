

def factory_new_partner():
    partner = {
        "name": "Pizzas Papito",
	    "email": "contato@papito.com.br",
	    "whatsapp": "11999999999",
	    "business": "Restaurante"
    }
    return  partner

def factory_enable_partner():
    partner = {
        "name": "Doceria do Vini",
	    "email": "contato@doceriavini.com.br",
	    "whatsapp": "11999999999",
	    "business": "Conveniência"
    }
    return  partner

def factory_remove_partner():
    partner = {
        "name": "Adega Dois Irmãos",
	    "email": "contato@adega2irmaos.com.br",
	    "whatsapp": "11999999999",
	    "business": "Conveniência"
    }
    return  partner

def factory_disable_partner():
    partner = {
        "name": "Mercado Zézinho",
	    "email": "contato@mercadozezinho.com.br",
	    "whatsapp": "31999999999",
	    "business": "Supermercado"
    }
    return  partner

def factory_dup_name():
    partner = {
        "name": "Adega Sebastião",
	    "email": "contato@sebastiao.com.br",
	    "whatsapp": "19999999999",
	    "business": "Conveniência"
    }
    return  partner

def factory_404_partner():
    partner = {
        "name": "Frango Frito SA",
	    "email": "contato@frangofrito.com.br",
	    "whatsapp": "57999999999",
	    "business": "Restaurante"
    }
    return  partner

def factory_partner_list():
    p_list = [
        {
        "name": "Supermercado Bom Retiro",
	    "email": "bom_retiro@sebastiao.com.br",
	    "whatsapp": "41999999999",
	    "business": "Supermercado"
        },
        {
        "name": "Mercearia da Mary Jane",
	    "email": "mary@puff.com.br",
	    "whatsapp": "61999999999",
	    "business": "Restaurante"
        },
        {
        "name": "Mercadinho Dubom",
	    "email": "dubom@mercadinho.com.br",
	    "whatsapp": "21999999999",
	    "business": "Conveniência"
        }  
    ]
    return p_list
