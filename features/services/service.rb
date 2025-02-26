module Rest
    class Service
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
    
        def get_cep_mooca            
            self.class.get('/ws/03330002/json/')            
        end

        def get_cep_itaquera            
            self.class.get('/ws/08253390/json/')            
        end

        def get_cep_invalido            
            self.class.get('/ws/03330002/json/')            
        end
        
    end
end
